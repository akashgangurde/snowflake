// XML DDL Scripts
USE LIBRARY_CARD_CATALOG;

// Create an Ingestion Table for XML Data
CREATE TABLE "LIBRARY_CARD_CATALOG"."PUBLIC"."AUTHOR_INGEST_XML" 
(
  "RAW_AUTHOR" VARIANT
);

//Create File Format for XML Data
CREATE FILE FORMAT "LIBRARY_CARD_CATALOG"."PUBLIC".XML_FILE_FORMAT 
TYPE = 'XML' 
COMPRESSION = 'AUTO' 
PRESERVE_SPACE = FALSE 
STRIP_OUTER_ELEMENT = FALSE 
DISABLE_SNOWFLAKE_DATA = FALSE 
DISABLE_AUTO_CONVERT = FALSE 
IGNORE_UTF8_ERRORS = FALSE; 