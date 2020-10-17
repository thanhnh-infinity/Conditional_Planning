#!/usr/bin/env python

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
import config

CONFIG_DOMAIN = config.CONFIG_DOMAIN


EXAMPLE_FILE = ""
FULL_PATH_WORKSPACE = ""
FULL_PATH_GROUNDING = ""

# Fix config
GLOBAL_DEBUG = False

#Define Global Variables
PREDICATE_OCCUR = 'occur({},{:d})'
PREDICATE_ASSUMED = "_assumed(h(initially({},{}),{:d}))"
PREDICATE_H = "h(initially({},{}))"
PREDICATE_INIT = "initially({},{})"

COUNTING_PLANS = 0

ASSUMPTION_BASED = "assumption_based"
CONDITIONAL_V1 = "conditional_learning"
CONDITIONAL_V2 = "conditional_brute_force"

VERSION = "0.0.2"
#----------------------------------------------------------------#
#-------------------MAIN PROGRAM---------------------------------#
#----------------------------------------------------------------#
def determine_step(config):
    EXAMPLE_FILE = config["problem_asp_file"]
    if ("composition" in config["domain_name"]):
        if ("example_1" in EXAMPLE_FILE):
            CONFIG_PRAM_N = "n=9"
        elif ("example_4" in EXAMPLE_FILE):
            CONFIG_PRAM_N = "n=10"    
        elif ("example_3" in EXAMPLE_FILE):
            CONFIG_PRAM_N = "n=10"
        else:
            CONFIG_PRAM_N = "n=9"
    elif ("shopping" in config["domain_name"]):
        if ("problem_1" in EXAMPLE_FILE):
            CONFIG_PRAM_N = "n=4"
        elif ("problem_2" in EXAMPLE_FILE):
            CONFIG_PRAM_N = "n=7"    
        elif ("problem_3_3" in EXAMPLE_FILE):
            CONFIG_PRAM_N = "n=5"
        elif ("problem_3_1" in EXAMPLE_FILE) or ("problem_3_2" in EXAMPLE_FILE):
            CONFIG_PRAM_N = "n=4"    
        else:
            CONFIG_PRAM_N = "n=6"
    else:
        CONFIG_PRAM_N = "n=%s" %(str(config["step"]))

    return CONFIG_PRAM_N

def execute_CLINGO(planning,config):
    CONFIG_PRAM_N = determine_step(config)
    try:
        if (CONDITIONAL_V1 in planning):
            p = subprocess.Popen(['clingo','--outf=0',"engine_solver_V1.py",config["main_asp_file"],config["problem_asp_file"],"-c",CONFIG_PRAM_N,"-c","assumptions=1"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        elif (CONDITIONAL_V2 in planning):
            p = subprocess.Popen(['clingo','--outf=0',"engine_solver_V2.py",config["main_asp_file"],config["problem_asp_file"],"-c",CONFIG_PRAM_N,"-c","assumptions=1","-c","nuk=%s" % (str(config["number_unknown_group"]))], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        elif (ASSUMPTION_BASED in planning):
            p = subprocess.Popen(['clingo','--outf=0',config["main_asp_file"],config["problem_asp_file"],"-c",CONFIG_PRAM_N,"-c","assumptions=1"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out, err = p.communicate()
        print(err)
        return out
    except Exception as err:
        print(err)
        return False
if __name__ == "__main__":
    '''
    Run : python app_solver_V1.py [plannning] [domain]
    '''
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument("planning")
    arg_parser.add_argument("domain_name")
    #arg_parser.add_argument("step")
    options = arg_parser.parse_args()
    #print(options)
    domain_name = options.domain_name
    planning = options.planning
    #step = options.step
    if (planning not in [ASSUMPTION_BASED,CONDITIONAL_V1,CONDITIONAL_V2]):
        sys.exit("Invalid planning engine. planning must be in %s" %(str([ASSUMPTION_BASED,CONDITIONAL_V1,CONDITIONAL_V2])))

    if (domain_name not in CONFIG_DOMAIN):
        domain = CONFIG_DOMAIN.keys()
        #for d in CONFIG_DOMAIN:
            #domain.append(d)
        sys.exit("Invalid domain name. Data should be : \n %s" %(str(domain)))


    config = CONFIG_DOMAIN[domain_name]
    print("=========================")
    print(config)
    print("=========================")

    result = execute_CLINGO(planning,config)
    print(result)