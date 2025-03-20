* Encoding: UTF-8.
*Since more then two only - ICC3,k (95%CI) is suitable measure here
    *Cappa can be calculated only for two rators, while weighted cappa is sutiable only for nominal data, which these are not
    *Note for my interpretation of ICC: The ICC is a value between 0 and 1, where values below 0.5 indicate poor reliability, 
     between 0.5 and 0.75 moderate reliability, between 0.75 and 0.9 good reliability, and any value above 0.9 indicates excellent reliability

************
    calculating ICC for GPT-3.5-turbo-16k
************

USE ALL. 
COMPUTE filter_$=(Dimension = 1). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sentiment
    
RELIABILITY 
  /VARIABLES=K_2 K_2_A K_2_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.994
    
USE ALL. 
COMPUTE filter_$=(Dimension = 2). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out political lenience


RELIABILITY 
  /VARIABLES=K_2 K_2_A K_2_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.965
    

USE ALL. 
COMPUTE filter_$=(Dimension = 3). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out emotional intensity
    

RELIABILITY 
  /VARIABLES=K_2 K_2_A K_2_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.976
    

USE ALL. 
COMPUTE filter_$=(Dimension = 4). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sarcsm
    
RELIABILITY 
  /VARIABLES=K_2 K_2_A K_2_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*good ICC, 0.837
    


************
    calculating ICC for GPT-4
************


USE ALL. 
COMPUTE filter_$=(Dimension = 1). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sentiment
    
RELIABILITY 
  /VARIABLES=K_3 K_3_A K_3_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.990
    
USE ALL. 
COMPUTE filter_$=(Dimension = 2). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out political lenience


RELIABILITY 
  /VARIABLES=K_3 K_3_A K_3_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.986
    

USE ALL. 
COMPUTE filter_$=(Dimension = 3). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out emotional intensity
    

RELIABILITY 
  /VARIABLES=K_3 K_3_A K_3_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.982
    

USE ALL. 
COMPUTE filter_$=(Dimension = 4). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sarcsm
    
RELIABILITY 
  /VARIABLES=K_3 K_3_A K_3_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*really bad ICC, 0.299
    

************
    calculating ICC for GPT-4o
************


USE ALL. 
COMPUTE filter_$=(Dimension = 1). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sentiment
    
RELIABILITY 
  /VARIABLES=K_4 K_4_A K_4_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.992
    
USE ALL. 
COMPUTE filter_$=(Dimension = 2). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out political lenience


RELIABILITY 
  /VARIABLES=K_4 K_4_A K_4_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.983
    

USE ALL. 
COMPUTE filter_$=(Dimension = 3). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out emotional intensity
    

RELIABILITY 
  /VARIABLES=K_4 K_4_A K_4_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.983

USE ALL. 
COMPUTE filter_$=(Dimension = 4). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sarcsm
    
RELIABILITY 
  /VARIABLES=K_4 K_4_A K_4_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Moderate reliability ICC, 0.697
    



************
    calculating ICC for GPT-4o-mini
************


USE ALL. 
COMPUTE filter_$=(Dimension = 1). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sentiment
    
RELIABILITY 
  /VARIABLES=K_5 K_5_A K_5_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.995
    
USE ALL. 
COMPUTE filter_$=(Dimension = 2). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out political lenience


RELIABILITY 
  /VARIABLES=K_5 K_5_A K_5_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.989
    

USE ALL. 
COMPUTE filter_$=(Dimension = 3). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out emotional intensity
    

RELIABILITY 
  /VARIABLES=K_5 K_5_A K_5_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.996

USE ALL. 
COMPUTE filter_$=(Dimension = 4). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sarcsm
    
RELIABILITY 
  /VARIABLES=K_5 K_5_A K_5_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Moderately reliable ICC, 0.737
    


************
    calculating ICC for Gemini 1.5 Pro
************


USE ALL. 
COMPUTE filter_$=(Dimension = 1). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sentiment
    
RELIABILITY 
  /VARIABLES=K_1 K_1_A K_1_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.992
    
USE ALL. 
COMPUTE filter_$=(Dimension = 2). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out political lenience


RELIABILITY 
  /VARIABLES=K_1 K_1_A K_1_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Something really wrong, it goes into minus, -0.412
    

USE ALL. 
COMPUTE filter_$=(Dimension = 3). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out emotional intensity
    

RELIABILITY 
  /VARIABLES=K_1 K_1_A K_1_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*excelent ICC, 0.966

USE ALL. 
COMPUTE filter_$=(Dimension = 4). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sarcsm
    
RELIABILITY 
  /VARIABLES=K_1 K_1_A K_1_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Something really wrong, 0.065
    


************
    calculating ICC for llama-3.1-sonar-large-128k-chat
************


USE ALL. 
COMPUTE filter_$=(Dimension = 1). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sentiment
    
RELIABILITY 
  /VARIABLES=K_8 K_8_A K_8_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelent ICC, 1.000 - complete agreement
    
USE ALL. 
COMPUTE filter_$=(Dimension = 2). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out political lenience


RELIABILITY 
  /VARIABLES=K_8 K_8_A K_8_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelent, 0.997
    

USE ALL. 
COMPUTE filter_$=(Dimension = 3). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out emotional intensity
    

RELIABILITY 
  /VARIABLES=K_8 K_8_A K_8_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelent ICC, 0.993

USE ALL. 
COMPUTE filter_$=(Dimension = 4). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sarcsm
    
RELIABILITY 
  /VARIABLES=K_8 K_8_A K_8_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Moderate reliability, 0.650



************
    calculating ICC for Mixtral-8x7b-instruct
************


USE ALL. 
COMPUTE filter_$=(Dimension = 1). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sentiment
    
RELIABILITY 
  /VARIABLES=K_9 K_9_A K_9_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelent ICC, 0.999
    
USE ALL. 
COMPUTE filter_$=(Dimension = 2). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out political lenience


RELIABILITY 
  /VARIABLES=K_9 K_9_A K_9_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelent, 0.989
    

USE ALL. 
COMPUTE filter_$=(Dimension = 3). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out emotional intensity
    

RELIABILITY 
  /VARIABLES=K_9 K_9_A K_9_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelet ICC, 0.989

USE ALL. 
COMPUTE filter_$=(Dimension = 4). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sarcsm
    
RELIABILITY 
  /VARIABLES=K_9 K_9_A K_9_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Good reliability, 0.765




************
    calculating ICC for GPT-4oH_Hard
************


USE ALL. 
COMPUTE filter_$=(Dimension = 1). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sentiment
    
RELIABILITY 
  /VARIABLES=K_6 K_6_A K_6_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelent ICC, 0.997
    
USE ALL. 
COMPUTE filter_$=(Dimension = 2). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out political lenience


RELIABILITY 
  /VARIABLES=K_6 K_6_A K_6_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelent, 0.987
    

USE ALL. 
COMPUTE filter_$=(Dimension = 3). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out emotional intensity
    

RELIABILITY 
  /VARIABLES=K_6 K_6_A K_6_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Excelet ICC, 0.979

USE ALL. 
COMPUTE filter_$=(Dimension = 4). 
VARIABLE LABELS filter_$ 'Dimension = 1 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*filtering out sarcsm
    
RELIABILITY 
  /VARIABLES=K_6 K_6_A K_6_B 
  /SCALE('ALL VARIABLES') ALL 
  /MODEL=ALPHA 
  /ICC=MODEL(MIXED) TYPE(CONSISTENCY) CIN=95 TESTVAL=0.
*Bad, 0.394

