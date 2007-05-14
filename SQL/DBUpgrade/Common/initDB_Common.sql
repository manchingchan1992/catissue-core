/*Vijay Pande: Bug:3834: For Specimen class = 'Molecular' following two permissible values are added*/
INSERT INTO CATISSUE_PERMISSIBLE_VALUE (IDENTIFIER, VALUE, PARENT_IDENTIFIER, PUBLIC_ID) VALUES(2651,'Total Nucleic Acid',1,NULL);
INSERT INTO CATISSUE_PERMISSIBLE_VALUE (IDENTIFIER, VALUE, PARENT_IDENTIFIER, PUBLIC_ID) VALUES(2652,'Whole Genome Amplified DNA',1,NULL);
/* Virender Mehta Non Required valuess 'Not specified' for race and ethnicity for CatissueV1.2 requirement*/
DELETE FROM CATISSUE_PERMISSIBLE_VALUE where IDENTIFIER=2649;
DELETE FROM CATISSUE_PERMISSIBLE_VALUE where IDENTIFIER=2650;
/* Virender Mehta update Male and Female values for CatissueV1.2 requirement*/
UPDATE CATISSUE_PERMISSIBLE_VALUE SET VALUE = "Male Gender" WHERE identifier=59;
UPDATE CATISSUE_PERMISSIBLE_VALUE SET VALUE = "Female Gender" WHERE identifier=61;

/*Shital Lawhale Bug#3549 */
/*update the CATISSUE_SEARCH_DISPLAY_DATA table for ATTRIBUTE_ORDER*/
/* ************************************** QUERIES FOR PARTICIPANT ***********************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE  RELATIONSHIP_ID=27 AND COL_ID =118;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=27 AND COL_ID =117;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =12  WHERE  RELATIONSHIP_ID=27 AND COL_ID =116;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE  RELATIONSHIP_ID=27 AND COL_ID =119;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE  RELATIONSHIP_ID=27 AND COL_ID =120;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =11   WHERE  RELATIONSHIP_ID=27 AND COL_ID =303;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =10   WHERE  RELATIONSHIP_ID=27 AND COL_ID =304;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE  RELATIONSHIP_ID=27 AND COL_ID =121;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE  RELATIONSHIP_ID=27 AND COL_ID =122;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (27, 123, 'Race',1);*/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE  RELATIONSHIP_ID=27 AND COL_ID =124;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE  RELATIONSHIP_ID=27 AND COL_ID =125;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (27, 126, 'Activity Status',1);*/

/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (44, 185, 'Medical Record Number Source');*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =4 WHERE  RELATIONSHIP_ID=28 AND COL_ID =128;

/* ************************************** QUERIES FOR COLLECTION PROTOCOL REGISTRATION ************************************** */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =8 WHERE  RELATIONSHIP_ID=29 AND COL_ID =59;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =6 WHERE  RELATIONSHIP_ID=45 AND COL_ID =224;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =1 WHERE  RELATIONSHIP_ID=29 AND COL_ID =60;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =7 WHERE  RELATIONSHIP_ID=29 AND COL_ID =61;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (29, 64, 'Activity Status',1);*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE  RELATIONSHIP_ID=46 AND COL_ID =117;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE   RELATIONSHIP_ID=46 AND COL_ID =118;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE   RELATIONSHIP_ID=46 AND COL_ID =119;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE  RELATIONSHIP_ID=46 AND COL_ID =120;

/* ************************************** QUERIES FOR SPECIMEN COLLECTION GROUP **********************************************/
/*Inserting value for ATTRIBUTE_ORDER in specimen coll grp*/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE  RELATIONSHIP_ID=30 AND COL_ID =320;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12 WHERE  RELATIONSHIP_ID=30 AND COL_ID =209;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE  RELATIONSHIP_ID=30 AND COL_ID =210;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE  RELATIONSHIP_ID=30 AND COL_ID =211;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (30, 212, 'Activity Status',1);*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE  RELATIONSHIP_ID=48 AND COL_ID =224;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER  = 9 WHERE  RELATIONSHIP_ID=31 AND COL_ID =57;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE  RELATIONSHIP_ID=32 AND COL_ID =185;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE  RELATIONSHIP_ID=33 AND COL_ID =60;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE  RELATIONSHIP_ID=47 AND COL_ID =45;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE  RELATIONSHIP_ID=47 AND COL_ID =46;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE  RELATIONSHIP_ID=54 AND COL_ID =117;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE  RELATIONSHIP_ID=54 AND COL_ID =118;

/* ************************************** QUERIES FOR SPECIMEN ***************************************************************/
/*Inserting value for ATTRIBUTE_ORDER in specimen*/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2  WHERE  RELATIONSHIP_ID=34 AND COL_ID =323;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 20  WHERE  RELATIONSHIP_ID=34 AND COL_ID =191;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6  WHERE  RELATIONSHIP_ID=34 AND COL_ID =102;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5  WHERE  RELATIONSHIP_ID=34 AND COL_ID =201;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9  WHERE  RELATIONSHIP_ID=34 AND COL_ID =199;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7  WHERE  RELATIONSHIP_ID=34 AND COL_ID =192;
/* Aniruddha : Model Changes for Specimen */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12  WHERE  RELATIONSHIP_ID=34 AND COL_ID =208;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 16  WHERE  RELATIONSHIP_ID=34 AND COL_ID =193;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 17  WHERE  RELATIONSHIP_ID=34 AND COL_ID =194;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 18  WHERE  RELATIONSHIP_ID=34 AND COL_ID =195;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA  SET ATTRIBUTE_ORDER =1 WHERE  RELATIONSHIP_ID=34 AND COL_ID =196;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (34, 198, 'Activity Status',1);*/
/*Kapil: Mearge the columns of the sub-specimens.*/
/* Aarti: Bug#1496- To allow query on initial quantity as well as available quantity */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 13 WHERE  RELATIONSHIP_ID=34 AND COL_ID =103;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 14 WHERE  RELATIONSHIP_ID=34 AND COL_ID =104;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 15 WHERE  RELATIONSHIP_ID=34 AND COL_ID =105;
/* Aarti: Added for Bug#2352- User can not search for specific specimen. */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE  RELATIONSHIP_ID=34 AND COL_ID =322;
/*Shital : Bug#3835: Added entry for created date in specimen*/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 19 WHERE  RELATIONSHIP_ID=34 AND COL_ID =328;


/* Aarti: Bug#1496- To allow query on initial quantity as well as available quantity */
/*UPDATE CATISSUE_TABLE_RELATION (RELATIONSHIP_ID, PARENT_TABLE_ID, CHILD_TABLE_ID) values (118,33,74);*/
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (118, 319, 'Quantity');*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE  RELATIONSHIP_ID=35 AND COL_ID =206;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE  RELATIONSHIP_ID=35 AND COL_ID =207;
/* Aniruddha : Model Changes for Specimen 
UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (35, 208, 'Pathological Status'); */

/*Removed for now...Need to add bewfore beta.*/
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (49, 27, 'Biohazard Type');*/
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (49, 25, 'Biohazard Name');*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE  RELATIONSHIP_ID=50 AND COL_ID =85;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE  RELATIONSHIP_ID=50 AND COL_ID =86;

/*******************Simple Search Edit scripts starts here***********/
/*Patch ID: SimpleSearchEdit_15*/
/*Adding Metadata required for the Simple search edit feature.*/
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (8,25);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (7,29);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (10,225);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (10,224);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (27,59);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (5,68);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (38,75);

INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (19,224);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (19,225);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (75,327);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (6,101);

INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (31,116);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (31,117);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (31,118);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (3,185);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (33,196);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (33,323);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (72,240);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (72,243);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (71,307);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (35,320);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (21,240);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (1,307);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (23,292);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (23,293);
INSERT INTO CATISSUE_QUERY_EDITLINK_COLS (TABLE_ID, COL_ID) values (23,294);
/*******************Simple Search Edit scripts ends here***********/
/*Patch ID: 4171_1*/
/*Adding CollectionProtocolEvent.collectionPointLabel attribute in simple search.*/
INSERT INTO CATISSUE_INTERFACE_COLUMN_DATA ( IDENTIFIER, TABLE_ID, COLUMN_NAME , ATTRIBUTE_TYPE ) values ( 329, 11, 'COLLECTION_POINT_LABEL', 'varchar');
INSERT INTO CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (14, 329, 'Collection Point Label');
INSERT INTO CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE,ATTRIBUTE_ORDER) VALUES (31, 329, 'Collection Point Label',0, 9);

/*Removing unwanted data from CSM*/
DELETE FROM CSM_PROTECTION_GROUP WHERE 
PROTECTION_GROUP_NAME LIKE '%_ATTRIBUTES' OR 
PROTECTION_GROUP_NAME LIKE 'ADMIN_DATA_USE_GROUP' OR 
PROTECTION_GROUP_NAME LIKE 'COLLECTION_PROTOCOL_GROUP' OR
PROTECTION_GROUP_NAME LIKE 'DISTRIBUTION_PROTOCOL_GROUP';
DELETE FROM CSM_PROTECTION_ELEMENT WHERE ATTRIBUTE IS NOT NULL;
INSERT INTO CSM_PG_PE (PROTECTION_GROUP_ID,PROTECTION_ELEMENT_ID) VALUES (1,54);
INSERT INTO CSM_PG_PE (PROTECTION_GROUP_ID,PROTECTION_ELEMENT_ID) VALUES (1,55);
INSERT INTO CSM_PG_PE (PROTECTION_GROUP_ID,PROTECTION_ELEMENT_ID) VALUES (1,56);
INSERT INTO CSM_PG_PE (PROTECTION_GROUP_ID,PROTECTION_ELEMENT_ID) VALUES (1,60);

/*********************** Sachin: Setting the column/attribute  order for display in search ************************/
/* ************************************** QUERIES FOR SITE ***********************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=6 AND COL_ID=185;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=6 AND COL_ID=184;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=6 AND COL_ID=186;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=6 AND COL_ID=187;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=7 AND COL_ID=2;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=7 AND COL_ID=3;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE RELATIONSHIP_ID=7 AND COL_ID=4;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=7 AND COL_ID=5;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE RELATIONSHIP_ID=7 AND COL_ID=6;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE RELATIONSHIP_ID=7 AND COL_ID=7;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE RELATIONSHIP_ID=7 AND COL_ID=8;

/* ************************************** QUERIES FOR INSTITUTION ***********************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=2 AND COL_ID=101;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=2 AND COL_ID=100;

/* ************************************** QUERIES FOR DEPARTMENT ***********************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=3 AND COL_ID=68;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=3 AND COL_ID=67;

/* ************************************** QUERIES FOR CRG ******************************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=4 AND COL_ID=29;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=4 AND COL_ID=28;

/* ************************************** QUERIES FOR BIOHAZARD ***********************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=5 AND COL_ID=25;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=5 AND COL_ID=24;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=5 AND COL_ID=26;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=5 AND COL_ID=27;

/* ************************************** QUERIES FOR STORAGE TYPE *********************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=108 AND COL_ID=307;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=1 AND COL_ID=258;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=1 AND COL_ID=260;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=108 AND COL_ID=261;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=108 AND COL_ID=262;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=108 AND COL_ID=308;

/* ************************************** QUERIES FOR STORAGE CONTAINER *****************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=110 AND COL_ID=240;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=8 AND COL_ID=239;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=8 AND COL_ID=241;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=9 AND COL_ID=252;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=9 AND COL_ID=253;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=10 AND COL_ID=307;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE RELATIONSHIP_ID=10 AND COL_ID=261;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=10 AND COL_ID=262;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE RELATIONSHIP_ID=11 AND COL_ID=185;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE RELATIONSHIP_ID=110 AND COL_ID=242;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE RELATIONSHIP_ID=110 AND COL_ID=243;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12 WHERE RELATIONSHIP_ID=110 AND COL_ID=247;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 13 WHERE RELATIONSHIP_ID=110 AND COL_ID=249;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 14 WHERE RELATIONSHIP_ID=110 AND COL_ID=250;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 15 WHERE RELATIONSHIP_ID=110 AND COL_ID=310;

/* ************************************** QUERIES FOR SPECIMEN ARRAY TYPE *********************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=112 AND COL_ID=307;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=111 AND COL_ID=311;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=111 AND COL_ID=312;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=112 AND COL_ID=261;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=112 AND COL_ID=262;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=112 AND COL_ID=308;

/* ************************************** QUERIES FOR SPECIMEN ARRAY *****************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=114 AND COL_ID=240;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=113 AND COL_ID=313;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3  WHERE RELATIONSHIP_ID=114 AND COL_ID=242;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=114 AND COL_ID=243;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=114 AND COL_ID=247;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=114 AND COL_ID=249;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE RELATIONSHIP_ID=114 AND COL_ID=250;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=114 AND COL_ID=310;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE RELATIONSHIP_ID=115 AND COL_ID=252;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE RELATIONSHIP_ID=115 AND COL_ID=253;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE RELATIONSHIP_ID=116 AND COL_ID=307;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12 WHERE RELATIONSHIP_ID=129 AND COL_ID=312;

/* ************************************** QUERIES FOR COLLECTION PROTOCOL ***************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=13 AND COL_ID=224;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=12 AND COL_ID=54;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=40 AND COL_ID=292;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=40 AND COL_ID=293;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=42 AND COL_ID=292;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=42 AND COL_ID=293;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7  WHERE RELATIONSHIP_ID=13 AND COL_ID=225;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=13 AND COL_ID=226;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE RELATIONSHIP_ID=13 AND COL_ID=227;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE RELATIONSHIP_ID=13 AND COL_ID=228;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE RELATIONSHIP_ID=13 AND COL_ID=229;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12 WHERE RELATIONSHIP_ID=13 AND COL_ID=230;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 13 WHERE RELATIONSHIP_ID=14 AND COL_ID=56;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 14 WHERE RELATIONSHIP_ID=14 AND COL_ID=57;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 15 WHERE RELATIONSHIP_ID=14 AND COL_ID=329;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 16 WHERE RELATIONSHIP_ID=15 AND COL_ID=233;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 17 WHERE RELATIONSHIP_ID=15 AND COL_ID=234;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 18 WHERE RELATIONSHIP_ID=15 AND COL_ID=235;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 19 WHERE RELATIONSHIP_ID=16 AND COL_ID=65;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 20 WHERE RELATIONSHIP_ID=119 AND COL_ID=319;

/* ************************************** QUERIES FOR DISTRIBUTION PROTOCOL *************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=18 AND COL_ID=224;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=17 AND COL_ID=79;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=18 AND COL_ID=225;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=18 AND COL_ID=226;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=18 AND COL_ID=227;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=18 AND COL_ID=228;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE RELATIONSHIP_ID=18 AND COL_ID=229;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=18 AND COL_ID=230;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE RELATIONSHIP_ID=20 AND COL_ID=233;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE RELATIONSHIP_ID=20 AND COL_ID=234;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE RELATIONSHIP_ID=20 AND COL_ID=235;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12 WHERE RELATIONSHIP_ID=120 AND COL_ID=319;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 13 WHERE RELATIONSHIP_ID=43 AND COL_ID=292;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 14 WHERE RELATIONSHIP_ID=43 AND COL_ID=293;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 15 WHERE RELATIONSHIP_ID=19 AND COL_ID=80;

/* ************************************** QUERIES FOR USER ******************************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=21 AND COL_ID=293;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=21 AND COL_ID=292;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=21 AND COL_ID=285;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=21 AND COL_ID=294;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=21 AND COL_ID=295;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=23 AND COL_ID=2;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE RELATIONSHIP_ID=23 AND COL_ID=3;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=23 AND COL_ID=4;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE RELATIONSHIP_ID=23 AND COL_ID=5;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE RELATIONSHIP_ID=23 AND COL_ID=6;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE RELATIONSHIP_ID=23 AND COL_ID=7;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12 WHERE RELATIONSHIP_ID=23 AND COL_ID=8;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 13 WHERE RELATIONSHIP_ID=25 AND COL_ID=101;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 14 WHERE RELATIONSHIP_ID=24 AND COL_ID=68;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 15 WHERE RELATIONSHIP_ID=26 AND COL_ID=29;

/* ************************************** QUERIES FOR DISTRIBUTION ************************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=36 AND COL_ID=75;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=36 AND COL_ID=298;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=36 AND COL_ID=302;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=37 AND COL_ID=72;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=52 AND COL_ID=191;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=52 AND COL_ID=192;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE RELATIONSHIP_ID=55 AND COL_ID=206;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=55 AND COL_ID=207;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE RELATIONSHIP_ID=52 AND COL_ID=208;

/* ************************* RELATIONSHIP QUERIES FOR REPORTED PROBLEMS ******************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=102 AND COL_ID=156;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=102 AND COL_ID=157;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=102 AND COL_ID=158;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=102 AND COL_ID=159;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=102 AND COL_ID=160;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=102 AND COL_ID=161;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE RELATIONSHIP_ID=102 AND COL_ID=162;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=102 AND COL_ID=163;

/* Biohazard */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=105 AND COL_ID=24;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=105 AND COL_ID=25;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=105 AND COL_ID=26;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=105 AND COL_ID=27;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=53 AND COL_ID=224;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=122 AND COL_ID=327;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE RELATIONSHIP_ID=121 AND COL_ID=315;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE RELATIONSHIP_ID=122 AND COL_ID=325;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE RELATIONSHIP_ID=122 AND COL_ID=326;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE RELATIONSHIP_ID=123 AND COL_ID=185;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE RELATIONSHIP_ID=124 AND COL_ID=224;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE RELATIONSHIP_ID=127 AND COL_ID=240;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE RELATIONSHIP_ID=125 AND COL_ID=307;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE RELATIONSHIP_ID=130 AND COL_ID=260;
/*********************** Sachin: Setting the column/attribute order ENDS ************************/
commit;

/* Virender: Bug#4290- If technician log in then by default no storage  position is allowed */
DELETE FROM CSM_ROLE_PRIVILEGE where ROLE_PRIVILEGE_ID=15;

