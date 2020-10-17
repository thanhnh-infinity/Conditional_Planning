import os
import collections
import sys
import os
import collections
import subprocess
import json
import time
import datetime
from sys import platform
import shutil
import argparse
import re
#Define Params for Q-ASP calling


CONFIG_DOMAIN = {
    "composition" : {
        "domain_name" : "composition",
        "main_asp_file" : "composition/composite_qasp.lp",
        "main_folder" : "composition",
        "problem_asp_file" : "composition/example_4.lp",
        "step" : ""
    },
    "shopping" : {
        "domain_name" : "shopping",
        "main_asp_file" : "domains/web_shopping/shopping_qasp.lp",
        "main_folder" : "domains/web_shopping",
        "problem_asp_file" : "domains/web_shopping/problem_3_3.lp",
        "step" : ""
    },
    "blocks_2_group" : {
        "domain_name" : "BlocksWorld",
        "main_asp_file" : "domains/blocks/ASP/block_qasp.lp",
        "main_folder" : "domains/blocks/ASP",
        "problem_asp_file" : "domains/blocks/ASP/blocks_2_group.lp",
        "step" : ""
    },
    "blocks_2" : {
        "domain_name" : "BlocksWorld",
        "main_asp_file" : "domains/blocks/ASP/block_qasp.lp",
        "main_folder" : "domains/blocks/ASP",
        "problem_asp_file" : "domains/blocks/ASP/blocks_2.lp",
        "step" : "4"
    },
    "blocks_3" : {
        "domain_name" : "BlocksWorld",
        "main_asp_file" : "domains/blocks/ASP/block_qasp.lp",
        "main_folder" : "domains/blocks/ASP",
        "problem_asp_file" : "domains/blocks/ASP/blocks_3.lp",
        "step" : "6"
    },
    "blocks_4_4" : {
        "domain_name" : "BlocksWorld",
        "main_asp_file" : "domains/blocks/ASP/block_qasp.lp",
        "main_folder" : "domains/blocks/ASP",
        "problem_asp_file" : "domains/blocks/ASP/blocks_4_28.lp",
        "step" : "4"
    },
    "blocks_4_6" : {
        "domain_name" : "BlocksWorld",
        "main_asp_file" : "domains/blocks/ASP/block_qasp.lp",
        "main_folder" : "domains/blocks/ASP",
        "problem_asp_file" : "domains/blocks/ASP/blocks_4_28.lp",
        "step" : "6"
    },
    "blocks_4_8" : {
        "domain_name" : "BlocksWorld",
        "main_asp_file" : "domains/blocks/ASP/block_qasp.lp",
        "main_folder" : "domains/blocks/ASP",
        "problem_asp_file" : "domains/blocks/ASP/blocks_4_28.lp",
        "step" : "8"
    },
    "blocks_4_10" : {
        "domain_name" : "BlocksWorld",
        "main_asp_file" : "domains/blocks/ASP/block_qasp.lp",
        "main_folder" : "domains/blocks/ASP",
        "problem_asp_file" : "domains/blocks/ASP/blocks_4_28.lp",
        "step" : "10"
    }

}

#EXAMPLE_FILE = "composition/example_4.lp"
#FULL_PATH_WORKSPACE = os.path.join(os.getcwd(), "composition","added")
#FULL_PATH_GROUNDING = os.path.join(os.getcwd(), "composition","grounded")
EXAMPLE_FILE = ""
FULL_PATH_WORKSPACE = ""
FULL_PATH_GROUNDING = ""

# Fix config
OUTPUT_CLINGO_SMODELS = "composite.smodels"
QASP2QBF_OUTPUT = "out.qasp2qbf"
NORMAL_EXECUTE = "normal"
INTERNAL_INTERATION = "integrate"
GLOBAL_DEBUG = False

#Define Global Variables
PREDICATE_OCCUR = 'occur({},{:d})'
PREDICATE_ASSUMED = "_assumed(h(initially({},{}),{:d}))"
PREDICATE_H = "h(initially({},{}))"
PREDICATE_INIT = "initially({},{})"

COUNTING_PLANS = 0


VERSION = "0.0.2"



def isDebug():
    return GLOBAL_DEBUG

class MultipleLevelsOfDictionary(collections.OrderedDict):
    def __getitem__(self,item):
        try:
            return collections.OrderedDict.__getitem__(self,item)
        except:
            value = self[item] = type(self)()
            return value

#########
##PARSER#
#########
class Parser:
    def __init__(self,allPre,assumed):
        self.ALL_PREDICATE_LIST = allPre
        self.ASSUMED_PREDICATE_LIST = assumed
        self.ASSUMED_PREDICATE_ID_LIST = []

    def read_allPredicates_ToList(self,text):
        strPredicates = text.split(" ")
        for pre in strPredicates:
            if (pre and pre is not None):
                self.ALL_PREDICATE_LIST.append(pre)
                if ("_assumed(h(" in pre):
                    self.ASSUMED_PREDICATE_LIST.append(pre)

    #def convert_predicates_ID(self):
                                

    def get_Predicates(self,kind):
        if ("_assumed" in kind):
            return self.ASSUMED_PREDICATE_LIST
        else:
            return []


#########
##AVOID##
#########
class FileContent:

    def __init__(self):
        self.rules = []
        self.rule = ""
        self.smodels_rules = []

    def generateAvoidRules(self,_assumedPredicates):
        strAdd = ""
        for assPre in _assumedPredicates:
            strAdd += str(assPre) + ", "
        aRule = ":- %s assumptions=1. \n" %(str(strAdd))
        #print(aRule)
        self.rules.append(aRule)
        self.rule = aRule
        return self.rule,self.rules
    
    def generateSmodels_AvoidRules(self,_assumedPredicates,db):
        strAdd = ""
        for assPre in _assumedPredicates:
            strAdd += str(db.atoms_ids.get(assPre)) + " "
        strAdd = strAdd.strip()
        aRule = "1 1 %s 0 %s\n" %(str(len(_assumedPredicates)),str(strAdd))
        #print(aRule)
        if aRule not in self.smodels_rules:
            self.smodels_rules.append(aRule)
        return self.smodels_rules
        
    def prepareFolder(self,type,config):
        current = time.time()
        current = "R" + str(current)
        if (NORMAL_EXECUTE in type):
            states_file_directory = os.path.join(os.getcwd(),config["main_folder"],"added","%s" % str(current))
        elif (INTERNAL_INTERATION in type):
            states_file_directory = os.path.join(os.getcwd(),config["main_folder"],"grounded","%s" % str(current))
        if not os.path.exists(states_file_directory):
            os.makedirs(states_file_directory)
        return str(current)

    def save_AvoidRules(self,folder):
        fo = open(os.path.join(FULL_PATH_WORKSPACE, folder ,"added.lp"),"w")
        #print("---Create Added--")
        input_resource_string = ""
        if (sys.version_info[0] < 3):
            for rule in self.rules:
                fo.write(str(rule))
        else:
            for rule in self.rules:
                #s=bytes(str(rule))
                fo.write(str(rule))
        #fo.write("%------------------------------------------------------------------------\n")
        fo.close()
        return True,os.path.join(FULL_PATH_WORKSPACE, folder ,"added.lp")

    def delete_folder(self,folder):
        delete_path = os.path.join(FULL_PATH_WORKSPACE, folder)
        if (os.path.exists(delete_path)):
            try:
                shutil.rmtree(delete_path)
                return True
            except OSError:
                return False

    def update_SmodelsRules_to_Smodel(self,folder):
        try:    
            with open(os.path.join(FULL_PATH_GROUNDING, folder ,"composite.smodels"),"r+") as f:
                content = f.read()
                f.seek(0,0);
                for rule in self.smodels_rules:
                    f.write(str(rule))
                f.write(content)

            f.close()
            return True
        except:
            return False

    def delete_grounding(self,folder):
        delete_path = os.path.join(FULL_PATH_GROUNDING, folder)
        if (os.path.exists(delete_path)):
            try:
                shutil.rmtree(delete_path)
                return True
            except OSError:
                return False
############
##DATABASE##
############
class Database:
    def __init__(self,file):
        self.meta_file = file
        self.ids_atoms = dict()
        self.atoms_ids = dict()

    def readDatabase(self):
        with open(self.meta_file) as f:
            lines = f.readlines()

        for line in lines:
            #match = re.match(r"\d+ _assumed\((.*),(\d+)\)",line)

            match = re.match(r"(\d+) _assumed\((.*)\)",line)

            if match:
                #print("ID" + str(match.group(0)))
                #print("atom" + str(match.group(1)))

                atom = "_assumed(%s)" %(str(match.group(2)))
                a_id = int(match.group(1))

                #print("%s %s" %(str(a_id),str(atom)))

                self.atoms_ids[atom] = a_id
                self.ids_atoms[a_id] = atom

    def get_Dict_atoms_ids(self):
        return self.atoms_ids

    def get_Dict_ids_atoms(self):
        return self.ids_atoms

    def try_get(self,atom):
        return self.atoms_ids.get(atom)


#########
##SOLVER#
#########
class Solver:

    def execute_grounding(self,params,config):
        kt = False
        global COUNTING_PLANS

        '''
        if (("example_1" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=9"
        elif (("example_4" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=10"    
        elif (("example_3" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=10"
        else:
            CONFIG_PRAM_N = "n=9"
        '''
        
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

        #gringo_proc = subprocess.Popen(["clingo","--output=smodels","composition/composite_qasp.lp",EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        #out,err = gringo_proc.communicate()
        f = open("clingo_smodels.txt", "w")
        subprocess.call(["clingo","--output=smodels",config["main_asp_file"],EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1"], stdout=f)

        f = open("clingo_text.txt", "w")
        subprocess.call(["clingo","--output=text",config["main_asp_file"],EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1"], stdout=f) 

        f = open("gringo.txt", "w")
        subprocess.call(["gringo",config["main_asp_file"],EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1"], stdout=f)         

    def execute_Q_ASP_integrate(self,params,folder,haveToGrounding,config):

        kt = False
        global COUNTING_PLANS

        '''
        if (("example_1" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=9"
        elif (("example_4" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=10"    
        elif (("example_3" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=10"
        else:
            CONFIG_PRAM_N = "n=9"
        '''
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

        # Running Clingo => Save all data in smodels
        full_dic = os.path.join(FULL_PATH_GROUNDING, folder ,OUTPUT_CLINGO_SMODELS)

        #f1 = open("clingo_text.txt", "w")
        #subprocess.call(["clingo","--output=text","composition/composite_qasp.lp",EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1"], stdout=f1) 
        #f1.close()

        if haveToGrounding:
            print("Ground only ONCE !!!!! :) ")
            f = open(full_dic,"w")       
            subprocess.call(["clingo","--output=smodels",config["main_asp_file"],EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1","-W","none"], stdout=f)
            f.close()

        if platform == "darwin":                
            qasp_proc = subprocess.Popen(["./qasp2qbf.py",full_dic,"--no-warnings"],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
            lp2normal2_proc = subprocess.Popen(["noah","bin/lp2normal2"],stdin=qasp_proc.stdout,stdout=subprocess.PIPE)
            lp2sat_proc = subprocess.Popen(["noah","bin/lp2sat"],stdin=lp2normal2_proc.stdout,stdout=subprocess.PIPE)
            qaspcnf_proc = subprocess.Popen(["./qasp2qbf.py","--cnf2qdimacs"],stdin=lp2sat_proc.stdout,stdout=subprocess.PIPE)
            caqe_proc = subprocess.Popen(["caqe-bin/caqe-mac","--partial-assignments"],stdin=qaspcnf_proc.stdout,stdout=subprocess.PIPE)
            qasp_final = subprocess.Popen(["./qasp2qbf.py","--interpret"],stdin=caqe_proc.stdout,stdout=subprocess.PIPE)         
            out,err = qasp_final.communicate()
        elif platform == "linux" or platform == "linux2":
            qasp_proc = subprocess.Popen(["./qasp2qbf.py",full_dic,"--no-warnings"],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
            lp2normal2_proc = subprocess.Popen(["bin/lp2normal2"],stdin=qasp_proc.stdout,stdout=subprocess.PIPE)
            lp2sat_proc = subprocess.Popen(["bin/lp2sat"],stdin=lp2normal2_proc.stdout,stdout=subprocess.PIPE)
            qaspcnf_proc = subprocess.Popen(["./qasp2qbf.py","--cnf2qdimacs"],stdin=lp2sat_proc.stdout,stdout=subprocess.PIPE)
            caqe_proc = subprocess.Popen(["caqe-bin/caqe-linux","--partial-assignments"],stdin=qaspcnf_proc.stdout,stdout=subprocess.PIPE)
            qasp_final = subprocess.Popen(["./qasp2qbf.py","--interpret"],stdin=caqe_proc.stdout,stdout=subprocess.PIPE)         
            out,err = qasp_final.communicate()
        else:
            print("Platform is not supported !")
            return False,""    

        lines = []
        answer = ""
        if (out and out is not None):
            if (sys.version_info[0] < 3):
                lines = out.split('\n')
            elif (sys.version_info[0] == 3):
                lines = out.split(b'\n')


        kt = False 
        #print(lines)
        if (len(lines) > 0):
            for i in range(0,len(lines)):
               if ("Answer_THANHNH:" in str(lines[i]) and (lines[i+1] is not None)):
                    COUNTING_PLANS = COUNTING_PLANS + 1
                    kt = True
                    if (sys.version_info[0] >= 3):
                        answer = str(lines[i+1]).strip()
                        answer = answer.replace('b"','')
                        answer = answer.replace(' "','')
                    else:    
                        answer = str(lines[i+1]).strip()
                    print("Plan : %s" %(str(COUNTING_PLANS)))
                    print(answer)
                    print("==============================");

        if (not kt):
            return False,""            
                    
        if (answer and answer is not None and "occur" in answer):
            return True,answer
        else:
            return False,""


    #count
    def execute_Q_ASP_command(self,params,avoid_file,config):  
        global COUNTING_PLANS   
        #command = "clingo --output=smodels composition/composite_qasp.lp /Users/tnguyen/All_Workspaces/ASP_Workspace/Q-ASP/qasp/composition/added/R1559199241.18/added.lp -c n=9 -c assumptions=1  | ./qasp2qbf.py --no-warnings | noah bin/lp2normal2 | noah bin/lp2sat | ./qasp2qbf.py --cnf2qdimacs | caqe-bin/caqe-mac --partial-assignments | ./qasp2qbf.py --interpret"

        #clingo --output=smodels composition/composite_qasp.lp composition/example_1.lp -c n=9 -c assumptions=1  | ./qasp2qbf.py --no-warnings | noah bin/lp2normal2 | noah bin/lp2sat | ./qasp2qbf.py --cnf2qdimacs | caqe-bin/caqe-mac --partial-assignments | ./qasp2qbf.py --interpret

        #clingo --output=smodels composition/composite_qasp.lp composition/example_3.lp -c assumptions=1

        #clingo --output=text composition/composite_qasp.lp composition/example_3.lp -c assumptions=1 

        #clasp clingo_smodels  | ./qasp2qbf.py --no-warnings | noah bin/lp2normal2 | noah bin/lp2sat | ./qasp2qbf.py --cnf2qdimacs | caqe-bin/caqe-mac --partial-assignments | ./qasp2qbf.py --interpret

        #./qasp2qbf.py --no-warnings | noah bin/lp2normal2 | noah bin/lp2sat | ./qasp2qbf.py --cnf2qdimacs | caqe-bin/caqe-mac --partial-assignments | ./qasp2qbf.py --interpret

        '''
        if (("example_1" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=9"
        elif (("example_4" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=10"    
        elif (("example_3" in EXAMPLE_FILE) and ("composition" in config["domain_name"])):
            CONFIG_PRAM_N = "n=10"
        else:
            CONFIG_PRAM_N = "n=9"
        '''
        
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
        

        if platform == "darwin":
            if (not avoid_file or avoid_file is None):
                if (not isDebug()):
                    clingo_proc = subprocess.Popen(["clingo","--output=smodels",config["main_asp_file"],EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1","-W","none"],stdout=subprocess.PIPE)
                else:
                    print(EXAMPLE_FILE)
                    print(CONFIG_PRAM_N)
                    clingo_proc = subprocess.Popen(["clingo","--output=smodels",config["main_asp_file"],EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1"],stdout=subprocess.PIPE)
            else:
                if (not isDebug()):
                    clingo_proc = subprocess.Popen(["clingo","--output=smodels",config["main_asp_file"],EXAMPLE_FILE,avoid_file,"-c",CONFIG_PRAM_N,"-c","assumptions=1","-W","none"],stdout=subprocess.PIPE)
                else:   
                    print(EXAMPLE_FILE)
                    print(CONFIG_PRAM_N)
                    print(avoid_file)
                    clingo_proc = subprocess.Popen(["clingo","--output=smodels",config["main_asp_file"],EXAMPLE_FILE,avoid_file,"-c",CONFIG_PRAM_N,"-c","assumptions=1"],stdout=subprocess.PIPE)                
            qasp_proc = subprocess.Popen(["./qasp2qbf.py","--no-warnings"],stdin=clingo_proc.stdout,stdout=subprocess.PIPE)
            lp2normal2_proc = subprocess.Popen(["noah","bin/lp2normal2"],stdin=qasp_proc.stdout,stdout=subprocess.PIPE)
            lp2sat_proc = subprocess.Popen(["noah","bin/lp2sat"],stdin=lp2normal2_proc.stdout,stdout=subprocess.PIPE)
            qaspcnf_proc = subprocess.Popen(["./qasp2qbf.py","--cnf2qdimacs"],stdin=lp2sat_proc.stdout,stdout=subprocess.PIPE)
            caqe_proc = subprocess.Popen(["caqe-bin/caqe-mac","--partial-assignments"],stdin=qaspcnf_proc.stdout,stdout=subprocess.PIPE)
            qasp_final = subprocess.Popen(["./qasp2qbf.py","--interpret"],stdin=caqe_proc.stdout,stdout=subprocess.PIPE)         
            out,err = qasp_final.communicate()
        elif platform == "linux" or platform == "linux2":
            if (not avoid_file or avoid_file is None):
                clingo_proc = subprocess.Popen(["clingo","--output=smodels",config["main_asp_file"],EXAMPLE_FILE,"-c",CONFIG_PRAM_N,"-c","assumptions=1","-W","none"],stdout=subprocess.PIPE)
            else:
                clingo_proc = subprocess.Popen(["clingo","--output=smodels",config["main_asp_file"],EXAMPLE_FILE,avoid_file,"-c",CONFIG_PRAM_N,"-c","assumptions=1","-W","none"],stdout=subprocess.PIPE)
            qasp_proc = subprocess.Popen(["./qasp2qbf.py","--no-warnings"],stdin=clingo_proc.stdout,stdout=subprocess.PIPE)
            lp2normal2_proc = subprocess.Popen(["bin/lp2normal2"],stdin=qasp_proc.stdout,stdout=subprocess.PIPE)
            lp2sat_proc = subprocess.Popen(["bin/lp2sat"],stdin=lp2normal2_proc.stdout,stdout=subprocess.PIPE)
            qaspcnf_proc = subprocess.Popen(["./qasp2qbf.py","--cnf2qdimacs"],stdin=lp2sat_proc.stdout,stdout=subprocess.PIPE)
            caqe_proc = subprocess.Popen(["caqe-bin/caqe-linux","--partial-assignments"],stdin=qaspcnf_proc.stdout,stdout=subprocess.PIPE)
            qasp_final = subprocess.Popen(["./qasp2qbf.py","--interpret"],stdin=caqe_proc.stdout,stdout=subprocess.PIPE)         
            out,err = qasp_final.communicate()
        else:
            print("Platform is not supported !")
            return False,""    

        lines = []
        answer = ""
        if (out and out is not None):
            if (sys.version_info[0] < 3):
                lines = out.split('\n')
            elif (sys.version_info[0] == 3):
                lines = out.split(b'\n')


        kt = False 
        
        if (len(lines) > 0):
            for i in range(0,len(lines)):
               if ("Answer_THANHNH:" in str(lines[i]) and (lines[i+1] is not None)):
                    COUNTING_PLANS = COUNTING_PLANS + 1
                    kt = True
                    if (sys.version_info[0] >= 3):
                        answer = str(lines[i+1]).strip()
                        answer = answer.replace('b"','')
                        answer = answer.replace(' "','')
                    else:    
                        answer = str(lines[i+1]).strip()
                    print("Plan : %s" %(str(COUNTING_PLANS)))
                    print(answer)
                    print("==============================");

        if (not kt):
            return False,""            
                    
        if (answer and answer is not None and "occur" in answer):
            return True,answer
        else:
            return False,""


def normal_running_QASP(execute_type,config):
    currentDT_1 = time.time()
    hasAnswer = True
    solver = Solver()
    avoid = FileContent()

    hasAnswer,answer = solver.execute_Q_ASP_command([],"",config);

    while hasAnswer:
        parser = Parser([],[])
        parser.read_allPredicates_ToList(answer)
        strRavoid,Ravoids = avoid.generateAvoidRules(parser.get_Predicates("_assumed"))
        folder = avoid.prepareFolder(execute_type,config)
        cflag,file = avoid.save_AvoidRules(folder)
        hasAnswer,answer = solver.execute_Q_ASP_command([],file,config)
        if (not isDebug()):
            avoid.delete_folder(folder)
    currentDT_2 = time.time()
    print("---Total time : %s seconds" % (str(round(currentDT_2 - currentDT_1,4))))

def integrate_internal_running_QASP(execute_type,config):
    currentDT_1 = time.time()
    # Runing Gringo to save grounded data file
    hasAnswer = True
    solver = Solver()
    avoid = FileContent()
    folder = avoid.prepareFolder(execute_type,config)
    
    hasAnswer,answer = solver.execute_Q_ASP_integrate([],folder,True,config)

    database = Database(QASP2QBF_OUTPUT)
    database.readDatabase()
    #print(database.try_get("_assumed(h(initially(resource_FreeText,binary),0))"))
    while hasAnswer:
        parser = Parser([],[])
        parser.read_allPredicates_ToList(answer)
        smodels_rules = avoid.generateSmodels_AvoidRules(parser.get_Predicates("_assumed"),database)
        #print(smodels_rules)
        avoid.update_SmodelsRules_to_Smodel(folder)
        hasAnswer,answer = solver.execute_Q_ASP_integrate([],folder,False,config)
        #break
    
    if (not isDebug()):
            avoid.delete_grounding(folder)

    currentDT_2 = time.time()
    print("---Total time : %s seconds" % (str(round(currentDT_2 - currentDT_1,4))))


if __name__ == "__main__":
    

    '''
    Run : python3 app_Q-ASP.py integrate composition
    '''

    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument("execute_type")
    arg_parser.add_argument("domain_name")
    #arg_parser.add_argument("step")
    options = arg_parser.parse_args()
    #print(options)
    execute_type = options.execute_type
    domain_name = options.domain_name
    #step = options.step

    if (domain_name not in CONFIG_DOMAIN):
        sys.exit("Invalid domain name")

    config = CONFIG_DOMAIN[domain_name]
    print("=========================")
    #config["step"] = step
    print(config)
    print("=========================")

    # Feed configuration
    EXAMPLE_FILE = config["problem_asp_file"]
    FULL_PATH_WORKSPACE = os.path.join(os.getcwd(), config["main_folder"],"added")
    FULL_PATH_GROUNDING = os.path.join(os.getcwd(), config["main_folder"],"grounded")

    #print(execute_type)
    if (NORMAL_EXECUTE in execute_type):
        normal_running_QASP(execute_type,config)
    elif (INTERNAL_INTERATION in execute_type):
        integrate_internal_running_QASP(execute_type,config)          