LOAD DATA INFILE 'H://caTissue//work//workspace//catissuecoreNew/SQL/DBUpgrade/Common/CAModelCSVs/DYEXTN_ENTITY_GROUP.csv' 
APPEND 
INTO TABLE DYEXTN_ENTITY_GROUP 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(IDENTIFIER NULLIF IDENTIFIER='\\N',LONG_NAME NULLIF LONG_NAME='\\N',SHORT_NAME NULLIF SHORT_NAME='\\N',VERSION NULLIF VERSION='\\N',IS_SYSTEM_GENERATED NULLIF IS_SYSTEM_GENERATED='\\N')