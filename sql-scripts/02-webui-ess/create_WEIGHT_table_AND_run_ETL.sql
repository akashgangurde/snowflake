CREATE OR REPLACE TABLE WEIGHT (
    NDB_NO	VARCHAR(5)
    ,SEQ	VARCHAR(2)
    ,AMOUNT	NUMBER(6,3)
    ,MSRE_DESC	VARCHAR(84)
    ,GM_WGT	NUMBER(7,1)
    ,NUM_DATA_PTS	NUMBER(4,0)
    ,STD_DEV	NUMBER(7,3)
  );
  
//ETL to move WEIGHT data from WEIGHT_INGEST to WEIGHT
//LOAD STEP
INSERT INTO WEIGHT(
SELECT 
  //TRANSFORM STEP
    REPLACE(NDB_NO,'~') as NDB_NO
    ,REPLACE(SEQ,'~') as SEQ
    ,AMOUNT
    ,REPLACE(MSRE_DESC,'~') as MSRE_DESC
    ,GM_WGT
    ,NUM_DATA_PTS
    ,STD_DEV
//EXTRACT STEP 
FROM WEIGHT_INGEST);