* Encoding: UTF-8.
******************
    Comparing humans and LLMs
    For this step open data called: 24.08.24. LLMs vs Humans
******************
making variables
******************

COMPUTE Sentiment=SUM(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, 
    S18, S19, S20, S21, S22, S23, S24, S25) / NVALID(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, 
    S13, S14, S15, S16, S17, S18, S19, S20, S21, S22, S23, S24, S25). 
EXECUTE. 
COMPUTE Political_leaning=SUM(P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P12, P13, P14, 
    P15, P16, P17, P18, P19, P20, P21, P22, P23, P24, P25) / NVALID(P1, P2, P3, P4, P5, P6, P7, P8, P9, 
    P10, P11, P12, P12, P13, P14, P15, P16, P17, P18, P19, P20, P21, P22, P23, P24, P25). 
EXECUTE. 
COMPUTE Emotional_intensity=SUM(E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, 
    E16, E17, E18, E19, E20, E21, E22, E23, E24, E25) / NVALID(E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, 
    E11, E12, E13, E14, E15, E16, E17, E18, E19, E20, E21, E22, E23, E24, E25). 
EXECUTE. 
COMPUTE Sarcasm=SUM(SA1, SA2, SA3, SA4, SA5, SA6, SA7, SA8, SA9, SA10, SA11, SA12, SA13, SA14, 
    SA15, SA16, SA17, SA18, SA19, SA20, SA21, SA22, SA23, SA24, SA25) / NVALID(SA1, SA2, SA3, SA4, SA5, 
    SA6, SA7, SA8, SA9, SA10, SA11, SA12, SA13, SA14, SA15, SA16, SA17, SA18, SA19, SA20, SA21, SA22, 
    SA23, SA24, SA25). 
EXECUTE.

****************
    recoding variables with data on humans and LLMs
****************


AUTORECODE VARIABLES=V1  
  /INTO LLM_type 
  /PRINT. 
V1 into LLM_type 
Old Value                        New Value  Value Label 
 
Gemini 1.5 Pro                           1  Gemini 1.5 Pro 
GPT-3.5-turbo-16k                        2  GPT-3.5-turbo-16k 
GPT-4                                    3  GPT-4 
GPT-4o                                   4  GPT-4o 
GPT-4o-mini                              5  GPT-4o-mini 
GPT-4oH_Hard                             6  GPT-4oH_Hard 
Human                                    7  Human 
llama-3.1-sonar-large-128k-chat          8  llama-3.1-sonar-large-128k-chat 
Mixtral-8x7b-instruct                    9  Mixtral-8x7b-instruct 
 
 *variable LLM_type contains information about type of LLM use, and also about who are humans
 
AUTORECODE VARIABLES=V2 
  /INTO Participant_type 
  /PRINT. 
V2 into Participant_type 
Old Value  New Value  Value Label 
 
Human              1  Human 
LLM                2  LLM


*variable Participant_type contains only information who are LLMs and who humans
    


****************
    t-test for human LLM comparison
***************

FILTER OFF. 
USE ALL. 
EXECUTE.
*return all cases
    
T-TEST GROUPS=Participant_type(1 2) 
  /MISSING=ANALYSIS 
  /VARIABLES=Sentiment Political_leaning Emotional_intensity Sarcasm 
  /ES DISPLAY(TRUE) 
  /CRITERIA=CI(.95).
*different only in emotional intensity, higher in humans
    

******************
    ANOVA for comparison between humans and different LLMs
******************

GLM Sentiment Political_leaning Emotional_intensity Sarcasm BY LLM_type 
  /METHOD=SSTYPE(3) 
  /INTERCEPT=INCLUDE 
  /POSTHOC=LLM_type(BONFERRONI) 
  /PLOT=PROFILE(LLM_type) TYPE=BAR ERRORBAR=NO MEANREFERENCE=NO 
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(LLM_type) COMPARE ADJ(BONFERRONI) 
  /PRINT=DESCRIPTIVE ETASQ OPOWER HOMOGENEITY 
  /CRITERIA=ALPHA(.05) 
  /DESIGN= LLM_type.
*Again differences only on emotional intensity
    
******************
    ANOVA for comparing different LLMs
******************

USE ALL. 
COMPUTE filter_$=(Participant_type = 2). 
VARIABLE LABELS filter_$ 'Participant_type = 2 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.
*selecting only LLMs
    
GLM Sentiment Political_leaning Emotional_intensity Sarcasm BY LLM_type 
  /METHOD=SSTYPE(3) 
  /INTERCEPT=INCLUDE 
  /POSTHOC=LLM_type(BONFERRONI) 
  /PLOT=PROFILE(LLM_type) TYPE=BAR ERRORBAR=NO MEANREFERENCE=NO 
  /PRINT=DESCRIPTIVE ETASQ OPOWER HOMOGENEITY 
  /CRITERIA=ALPHA(.05) 
  /DESIGN= LLM_type.
*differ in all except for political leaning
    

