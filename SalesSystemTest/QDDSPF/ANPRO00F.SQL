000002190115-- ------------------------------------------------------------------------- --
000003190115-- Application: Common Sales System
000004190115-- Table:       ANPRO00F - Vehicle Master
000005190115-- Long Name    VEHICLE_MASTER
000006190115-- Author:      01/2019 Francesco Marras
000007190115-- Content:     This is THE vehicle master
000012190115-- Purge:       Data are purged by the "purge vehicles" functionality
000013190115-- ------------------------------------------------------------------------- --
000014190115
000015190115CREATE TABLE  ANPRO00F (
000016190118ANPRO_ID                            INTEGER    GENERATED BY DEFAULT AS IDENTITY
000017190118                                               (START WITH 1  INCREMENT BY 1
000018190118                                               MINVALUE   1  MAXVALUE 2147483647
000019190118                                               CYCLE CACHE 20 NO ORDER ),
000020190118RECORD_STATUS             FOR ATP01 CHAR(1)    NOT NULL DEFAULT ' ',
000021190118LAST_TASK_NUMBER          FOR NRP01 INTEGER    NOT NULL DEFAULT 0,
000022190118LAST_TASK_DATE            FOR DAP01 DATE       NOT NULL DEFAULT '0001-01-01',
000023190118RECORD_HOLD               FOR AGP01 CHAR(1)    NOT NULL DEFAULT '',
000024190118CREATION_DATE             FOR DIP01 DATE       NOT NULL DEFAULT '0001-01-01',
000025190118PRODUCT_CODE              FOR LNPRD CHAR(1)    NOT NULL DEFAULT '',
000028190118MODEL_CODE                FOR MODAM CHAR(15)   NOT NULL DEFAULT '',
000029190118ARRIVAL_MODEL             FOR MODAR CHAR(15)   NOT NULL DEFAULT '',
000030190118FACTORY_MODEL             FOR MODOR CHAR(15)   NOT NULL DEFAULT '',
000031190118TECH_MODEL                FOR MODTC CHAR(11)   NOT NULL DEFAULT '',
000032190118TECH_VAR_MODEL            FOR MODTS CHAR(4)    NOT NULL DEFAULT '',
000033190118DLR_VEH_STS_DATE          FOR DTSTP DATE       NOT NULL DEFAULT '0001-01-01',
000034190118MODEL_YEAR                FOR AAFAB NUMERIC(4) NOT NULL DEFAULT 0,
000035190118SHORT_VIN                 FOR TELAI NUMERIC(6) NOT NULL DEFAULT 0,
000036190118VEHICLE_STATUS            FOR STPRD CHAR(1)    NOT NULL DEFAULT '',
000037190118BODY_COLOR_CODE           FOR CDCOL CHAR(3)    NOT NULL DEFAULT '',
000038190118COMPL_COLOR_CODE          FOR CDCLM CHAR(3)    NOT NULL DEFAULT '',
000039190118ORIG_COL_FLAG             FOR FGCLO CHAR(1)    NOT NULL DEFAULT '',
000040190118VIN                       FOR VINNO CHAR(17)   NOT NULL DEFAULT '',
000041190118ENGINE_NUMBER             FOR ENGIN CHAR(18)   NOT NULL DEFAULT '',
000042190118IGNITION_KEY              FOR IGKEY CHAR(7)    NOT NULL DEFAULT '',
000043190118REGISTRATION_DOC_NO       FOR TPCFP CHAR(1)    NOT NULL DEFAULT '',
000044190118HOMOLOGATION_DATE         FOR DAOMO DATE       NOT NULL DEFAULT '0001-01-01',
000045190118HOMOLOGATION_NO           FOR NROMO CHAR(20)   NOT NULL DEFAULT '',
000046190118REGISTRATION_DOC_DATE     FOR DACFM DATE       NOT NULL DEFAULT '0001-01-01',
000047190118INT_REG_DOC_NO            FOR NRCFM NUMERIC(7) NOT NULL DEFAULT 0,
000048190118REQ_CUSTOMS_CLARANCE_NO   FOR NORSD NUMERIC(7) NOT NULL DEFAULT 0,
000049190118REQ_CUSTOMS_CLARANCE_DATE FOR DORSD DATE       NOT NULL DEFAULT '0001-01-01',
000050190118CUST_CLEARANCE_DOC_DATE   FOR DABOG DATE       NOT NULL DEFAULT '0001-01-01',
000051190118CUST_CLEARANCE_DOC_NO     FOR NRBOG CHAR(20)   NOT NULL DEFAULT '',
000052190118TEST_CARD_NUMBER          FOR NRCAR NUMERIC(9) NOT NULL DEFAULT 0,
000053190118TEST_CARD_NUMBER_REISS    FOR NRRCA NUMERIC(3) NOT NULL DEFAULT 0,
000054190118SALES_NUMBER              FOR NRVEN CHAR(10)   NOT NULL DEFAULT '',
000055190118CASE_NUMBER               FOR COLLO CHAR(6)    NOT NULL DEFAULT '',
000056190118CONTAINER_OR_SHIP         FOR CNTER CHAR(12)   NOT NULL DEFAULT '',
000057190118ETA                       FOR DTMER DATE       NOT NULL DEFAULT '0001-01-01',
000058190118BEGINNING_STOCK_FLAG      FOR ESINI NUMERIC(1) NOT NULL DEFAULT 0,
000059190118WAREHOUSE_CODE            FOR CDMAG CHAR(2)    NOT NULL DEFAULT '',
000060190118TARGET_YEAR               FOR AACCT NUMERIC(4) NOT NULL DEFAULT 0,
000061190118DEALER_VENDOR_FLAG        FOR FCLFO CHAR(1)    NOT NULL DEFAULT '',
000062190118DEALER_VENDOR_CODE        FOR TERZI CHAR(6)    NOT NULL DEFAULT '',
000063190118TEST_CARD_FLAG            FOR FLGCA CHAR(1)    NOT NULL DEFAULT '',
000064190118REG_DOCUMENT_TYPE         FOR FLGCC CHAR(1)    NOT NULL DEFAULT '',
000065190118REG_BOOK_FLAG             FOR FLGRC CHAR(1)    NOT NULL DEFAULT '',
000066190118LOCAL_APP_2_CODE          FOR UBICP CHAR(1)    NOT NULL DEFAULT '',
000067190118REGISTRATION_DATE         FOR DTIMM DATE       NOT NULL DEFAULT '0001-01-01',
000068190118NO_WARRANTY_FLAG          FOR GFSPE CHAR(1)    NOT NULL DEFAULT '',
000069190118VEH_STS_DLR_INV           FOR STPDL CHAR(2)    NOT NULL DEFAULT '',
000070190118OTHER_DEALER_FLAG         FOR FLGAC CHAR(1)    NOT NULL DEFAULT '',
000071190118INVENTORY_DEALER_CODE     FOR CLSTK CHAR(6)    NOT NULL DEFAULT '',
000072190118SUBDEALER_CODE            FOR CDSUB CHAR(6)    NOT NULL DEFAULT '',
000073190118CUSTOMS_CODE              FOR DOGAN CHAR(1)    NOT NULL DEFAULT '',
000074190118LAST_INVOICE_DATE         FOR DTUFT DATE       NOT NULL DEFAULT '0001-01-01',
000075190118LAST_INVOICE_NUMBER       FOR NRUFT NUMERIC(6) NOT NULL DEFAULT 0,
000076190118VEHICLE_REMARKS_CODE      FOR NTPRO CHAR(1)    NOT NULL DEFAULT '',
000077190118PRODUCTION_LINE_NUMBER    FOR NRIGP NUMERIC(7) NOT NULL DEFAULT 0,
000078190118CPSI_RECORD_SEND_FLAG     FOR FLGRP CHAR(1)    NOT NULL DEFAULT '',
000079190118GOV_REGISTRATION_DOC_CODE FOR CDANT CHAR(12)   NOT NULL DEFAULT '',
000080190118GOV_REGISTRATION_DOC_NO   FOR NRSEQ NUMERIC(10)NOT NULL DEFAULT 0,
000081190118ETD                       FOR VHETD DATE       NOT NULL DEFAULT '0001-01-01',
000082190118CONTROL_NUMBER            FOR CTRNO NUMERIC(6) NOT NULL DEFAULT 0,
000083190118TYPE_APPROVAL_NUMBER      FOR TAPNO CHAR(25)   NOT NULL DEFAULT '',
000084190118VARIANT                   FOR VARIA CHAR(16)   NOT NULL DEFAULT '',
000085190118VERSION                   FOR VERSI CHAR(16)   NOT NULL DEFAULT '',
000086190118DATE_OF_ISSUE_COC         FOR DTCOC DATE       NOT NULL DEFAULT '0001-01-01',
000087190118PIN_CODE                  FOR RMPIN CHAR(4)    NOT NULL DEFAULT '',
000088190118SALES_MODEL_CODE          FOR MODVE CHAR(15)   NOT NULL DEFAULT '',
000089190118TYPE_APPROVED_DATE        FOR DTTAD DATE       NOT NULL DEFAULT '0001-01-01',
000090190118VEHICLE_STATIC_STATUS     FOR STSTS CHAR(4)    NOT NULL DEFAULT '',
000091190118VEHICLE_BOOK_NUMBER       FOR VBNBR CHAR(15)   NOT NULL DEFAULT '',
000092190118WARRANTY_VENDOR_CODE      FOR CDFOW CHAR(6)    NOT NULL DEFAULT ''
000093190118)
000094190118RCDFMT ANPRO;
000095190118
000096190115RENAME TABLE ANPRO00F TO  VEHICLE_MASTER FOR SYSTEM NAME ANPRO00F;
000097190115
000100190118LABEL ON COLUMN ANPRO00F  (ATP01 TEXT IS 'Record status')
000200190118
