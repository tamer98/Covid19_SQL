-- USE COVIDVACCINE;

CREATE TABLE TOWN_TABLE
(
TNAME VARCHAR(50) NOT NULL PRIMARY KEY ,
POPULATION BIGINT NOT NULL ,
COUNTRY VARCHAR(50) NOT NULL 
);


CREATE TABLE INFO_TABLE
(
VIRUSNAME VARCHAR(50) NOT NULL PRIMARY KEY ,
UNITPRICE BIGINT NOT NULL 
);


CREATE TABLE SIDEEFFECT_TABLE
(
VIRUSNAME VARCHAR(50) NOT NULL PRIMARY KEY,
SIDEEFFECT VARCHAR(50) NOT NULL PRIMARY KEY,
CONSTRAINT fk_SIid FOREIGN KEY(VIRUSNAME)
REFERENCES INFO_TABLE(VIRUSNAME) 			
);


CREATE TABLE SUPPLIER_TABLE
(
SLICENSE BIGINT NOT NULL PRIMARY KEY ,
SNAME VARCHAR(50) NOT NULL,
ADDRESS VARCHAR(50) NOT NULL ,
EMAIL VARCHAR(50) NOT NULL ,
PHONENUMBER BIGINT NOT NULL 
);


CREATE TABLE HMO_TABLE
(
HMOLICENSE BIGINT NOT NULL PRIMARY KEY ,
HMONAME VARCHAR(50) NOT NULL ,
ADDRESS VARCHAR(50) NOT NULL ,
PHONENUMBER BIGINT NOT NULL ,
STOCK BIGINT ,
EMAIL VARCHAR(50) NOT NULL , 
TOWN VARCHAR(50) NOT NULL , 
CONSTRAINT fk_HTid FOREIGN KEY(TOWN)
REFERENCES TOWN_TABLE(TNAME) 
);


CREATE TABLE ORDER_TABLE
(
OID BIGINT NOT NULL AUTO_INCREMENT  ,
STATUS VARCHAR(50) NOT NULL CHECK 
(STATUS IN ('SHIPPED' , 'IN PROCESS' , 'DELIVERED')),
QUANTITY BIGINT NOT NULL ,
ESTIMATEDDATE DATETIME NOT NULL ,
DESTINATION VARCHAR(50) NOT NULL ,		
HMOLICENSE BIGINT NOT NULL  ,
SLICENSE BIGINT NOT NULL ,	
PRIMARY KEY (OID , HMOLICENSE) ,	
CONSTRAINT fk_OSid FOREIGN KEY(SLICENSE)
REFERENCES SUPPLIER_TABLE(SLICENSE),
CONSTRAINT fk_OHid FOREIGN KEY(HMOLICENSE)
REFERENCES HMO_TABLE(HMOLICENSE) 
ON DELETE CASCADE 
);


CREATE TABLE VACCINE_TABLE
(
SERIALNUMBER BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
EXPIRATIONDATE DATE NOT NULL ,
VIRUSNAME VARCHAR(50) NOT NULL ,		
MAKERID BIGINT NOT NULL ,
AVAILABLEINHMOID BIGINT NOT NULL,	
CONSTRAINT fk_VHid FOREIGN KEY(AVAILABLEINHMOID)
REFERENCES HMO_TABLE(HMOLICENSE),
CONSTRAINT fk_VSid FOREIGN KEY(MAKERID)
REFERENCES SUPPLIER_TABLE(SLICENSE),
CONSTRAINT fk_VIid FOREIGN KEY(VIRUSNAME)
REFERENCES INFO_TABLE(VIRUSNAME) 
);


CREATE TABLE PERSON_TABLE
(
PID BIGINT NOT NULL PRIMARY KEY ,
FNAME VARCHAR(50) NOT NULL  ,
LNAME VARCHAR(50) NOT NULL ,
DATEOFBIRTH DATE NOT NULL ,			
PHONENUM BIGINT NOT NULL ,
EMAIL VARCHAR(50) ,
LIVEIN VARCHAR(50) NOT NULL  ,
HMOTREATEDINID BIGINT NOT NULL ,
CONSTRAINT fk_PTid FOREIGN KEY(LIVEIN)
REFERENCES TOWN_TABLE(TNAME) ,
CONSTRAINT fk_PHid FOREIGN KEY(HMOTREATEDINID)
REFERENCES HMO_TABLE(HMOLICENSE) 
);


CREATE TABLE MEDICALRECORD_TABLE
(
FILEID VARCHAR(50) NOT NULL PRIMARY KEY ,
PID BIGINT NOT NULL UNIQUE,
BLOODTYPE VARCHAR(50) NOT NULL ,
STOREDINHMOID BIGINT NOT NULL ,
VACCINESTATUS VARCHAR(50) NOT NULL 
CHECK (VACCINESTATUS IN ('VACCINATED' , 'NOT VACCINATED')) ,
CONSTRAINT fk_MPid FOREIGN KEY(PID)
REFERENCES PERSON_TABLE(PID) ,
CONSTRAINT fk_MHid FOREIGN KEY(STOREDINHMOID)
REFERENCES HMO_TABLE(HMOLICENSE)
);

