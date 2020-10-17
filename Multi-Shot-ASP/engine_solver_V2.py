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
import itertools

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

ASSUMPABLE_FLUENTS = []

def findsubsets(s, n):
    #return [set(i) for i in itertools.combinations(s, n)] 
    return list(itertools.combinations(s, n))
def main(prg):
    global CONSTRAINTS_AVOID
    global ASSUMPABLE_FLUENTS
    def getNuk(prg):
        # Right now, dumpy solution --- get from config file -- will improve easily later
        try:
            nuk = int(str(prg.get_const("nuk")))
        except Exception as inst:
            nuk = -1
        return nuk
    def gene_inclusing(pops):
        _assumedPredicates = []
        for atom in pops:
            strAtom = str(atom)
            #print(strAtom)
            if (atom and atom is not None and strAtom and strAtom is not None):
                strAtom = strAtom.replace("_assumable","_assumed")
                _assumedPredicates.append(strAtom)
        aRule = ""
        for assPre in _assumedPredicates:
            aRule += str(assPre) + ". "
        
        #print(aRule)
        return aRule
    def gene_avoidance(answer_sets):
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

        if (_assumedPredicates and len(_assumedPredicates) > 0):    
            aRule = ":- %s 1<2.\n" %(str(strAdd))
        else:
            aRule = ""
        #print(aRule)
        return aRule
    def check_clingo_model(clingo_model):
        #print("day thi sao ---2 ")
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

    #answer_sets = []
    answer_set_symbols = []
    answer_sets = solve_iter(prg)
    RESULT_PLANTS = []
    for x in answer_sets:
        answer_set_symbols.append(x)
        strX = str(x)
        if ("_assumable(h" in strX):
            ASSUMPABLE_FLUENTS.append(strX)
    #RESULT_PLANTS.append(answer_set_symbols)
    #print(answer_sets)
    if (answer_sets is not None and len(answer_sets) > 0):
        isContinue = True
    else:
        isContinue = False

    # Find all subset of ASSUMPABLE_FLUENTS
    bruteForceSets = []
    #print(len(ASSUMPABLE_FLUENTS))
    #print(ASSUMPABLE_FLUENTS)
    
    #for i in range(len(ASSUMPABLE_FLUENTS)):
        #lst = findsubsets(ASSUMPABLE_FLUENTS,i)
        #for item in lst:
            #bruteForceSets.append(item)

    nuk = getNuk(prg)
    if (nuk == -1):
        sys.exit("No value of Number Of Unknown Group")

    print("---Number of Unknown Group : %s" %(str(nuk)))        
    lst = findsubsets(ASSUMPABLE_FLUENTS,nuk)
    for item in lst:
        bruteForceSets.append(item)
        
    #print(bruteForceSets)
    #for item in bruteForceSets:
        #print(item)
    #count = 1
    print("=============================================")
    print("========= RESULT START FROM HERE=============")
    print("=============================================")
    while (bruteForceSets):
        count = count + 1
        if count == 1:
            multi_shot_include = "multi_shot_include_%s" %(str(multi_shot_id))
            syms = bruteForceSets.pop()
            inclusion_assumed_fluents = gene_inclusing(syms)
            #print(inclusion_assumed_fluents)
            prg.add(multi_shot_include, [], inclusion_assumed_fluents)
            #prg.ground([(multi_shot_include, [])])

            # Solve updated program
            answer_sets = []
            answer_sets = solve_iter(prg)
            #print("AAA")
            answer_set_symbols = []
            for x in answer_sets:
                answer_set_symbols.append(x)

            if (len(answer_set_symbols) > 0):
                RESULT_PLANTS.append(answer_set_symbols)

        else:
            multi_shot_avoid_assumed_fluents = "multi_shot_avoid_assumed_fluents_%s" %(str(multi_shot_id))
            #print("======")
            #print(syms)
            #print("------")
            # Generate constraints to avoid thing assumed
            # allow_assume = "allow_assume."
            constraints_assumed_fluents = gene_avoidance(answer_set_symbols)
            CONSTRAINTS_AVOID = CONSTRAINTS_AVOID  + constraints_assumed_fluents
            #print("====================")
            #print(CONSTRAINTS_AVOID)
            #print(constraints_assumed_fluents)
            #print("--------------------")
            # Add new constraints to program
            prg.add(multi_shot_avoid_assumed_fluents, [], CONSTRAINTS_AVOID)
            prg.ground([(multi_shot_avoid_assumed_fluents, [])])

            multi_shot_include = "multi_shot_include_%s" %(str(multi_shot_id))
            syms = bruteForceSets.pop()
            inclusion_assumed_fluents = gene_inclusing(syms)
            prg.add(multi_shot_include, [], inclusion_assumed_fluents)
            #prg.ground([(multi_shot_include, [])])

            # Solve updated program
            # answer_sets = []
            answer_sets = solve_iter(prg)

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
#show _assumable/1.