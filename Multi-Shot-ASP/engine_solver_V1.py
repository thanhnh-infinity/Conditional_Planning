#script(python)
'''
 Conditional Planning - Generate Constraints from Assumable fluents
'''

import clingo
import time
import sys
import os
import json
import collections
import subprocess
import json
import time
import datetime
from sys import platform
import shutil
import argparse
import re
from pprint import pprint

# Fix config
GLOBAL_DEBUG = False
RESULT_PLANTS = []


#Define Global Variables
PREDICATE_OCCUR = 'occur({},{:d})'
PREDICATE_ASSUMED = "_assumed(h(initially({},{}),{:d}))"
PREDICATE_H = "h(initially({},{}))"
PREDICATE_INIT = "initially({},{})"

MAXIMUM_PLANS = 500

CONSTRAINTS_AVOID = ""

def main(prg):
    global CONSTRAINTS_AVOID
    def generate_contraints(answer_sets):
        _assumedPredicates = []
        for atom in answer_sets:
            strAtom = str(atom)
            #print(strAtom)
            if (atom and atom is not None and strAtom and strAtom is not None):
                #print(atom.name)
                if ("_assumed(h(" in strAtom):
                    _assumedPredicates.append(strAtom)
        strAdd = ""
        for assPre in _assumedPredicates:
            strAdd += str(assPre) + ", "
        aRule = ":- %s 1<2.\n" %(str(strAdd))
        #print(aRule)
        return aRule
    def check_clingo_model(clingo_model):
        return ""
    def solve_iter(prg):
        symbols = []
        with prg.solve(yield_=True,on_model=check_clingo_model) as handle:
            for m in handle:
                symbols = m.symbols(shown=True)
                #symbols = m.symbols()
        return symbols

    base_program = [("base", [])]
    prg.ground(base_program)

    #prg.solve()
    count = 0
    multi_shot_id = 1
    answer_sets = []
    isContinue = True
    while (count <= MAXIMUM_PLANS and isContinue is True):
        count = count + 1
        isContinue = False
        if (count == 1):
            #answer_sets = []
            answer_set_symbols = []
            answer_sets = solve_iter(prg)
            RESULT_PLANTS = []
            for x in answer_sets:
                answer_set_symbols.append(x)
            
            RESULT_PLANTS.append(answer_set_symbols)
            #print(answer_sets)
            if (answer_sets is not None and len(answer_sets) > 0):
                isContinue = True
            else:
                isContinue = False
        else:
            # name for new part
            multi_shot_avoid_assumed_fluents = "multi_shot_avoid_assumed_fluents_%s" %(str(multi_shot_id))

            # Generate constraints to avoid thing assumed
            # allow_assume = "allow_assume."
            constraints_assumed_fluents = generate_contraints(answer_set_symbols)
            CONSTRAINTS_AVOID = CONSTRAINTS_AVOID  + constraints_assumed_fluents
            #print("====================")
            #print(CONSTRAINTS_AVOID)
            #print("--------------------")
            # Add new constraints to program
            prg.add(multi_shot_avoid_assumed_fluents, [], CONSTRAINTS_AVOID)
            prg.ground([(multi_shot_avoid_assumed_fluents, [])])

            # Solve updated program
            # answer_sets = []
            answer_sets = solve_iter(prg)

            if (answer_sets is not None and len(answer_sets) > 0):
                isContinue = True
            else:
                isContinue = False

            if (answer_sets is None or len(answer_sets) <=0):
                break

            answer_set_symbols = []
            for x in answer_sets:
                answer_set_symbols.append(x)

            if (len(answer_set_symbols) > 0):
                RESULT_PLANTS.append(answer_set_symbols)  

        multi_shot_id = multi_shot_id + 1
    print("================")
    print("-----DONE-------")
    print("-----Number of Plans : %s" %(len(RESULT_PLANTS)))
#end.

#show occur/2.
#show _assumed/1.
