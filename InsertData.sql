-- USE COVIDVACCINE;



INSERT INTO TOWN_TABLE (TNAME , POPULATION , COUNTRY)
VALUES
('ADAMSTOWN'  ,  50 , 'Pitcairn Islands'),
('Washington'  ,  7002344 , 'USA');


INSERT INTO INFO_TABLE (VIRUSNAME  , UNITPRICE)
VALUES
('Covid19' , 41 ),
('Influentia' , 32 ),
('Ebola' , 26);


INSERT INTO SIDEEFFECT_TABLE (VIRUSNAME  , SIDEEFFECT)
VALUES
('Covid19' , 'HEAT'),
('Covid19' , 'INFIRMITY' );


INSERT INTO SUPPLIER_TABLE (SLICENSE , SNAME , ADDRESS , EMAIL , PHONENUMBER)
VALUES
(1092265 ,'Pfizer'    ,  'Vancouver  , Canada'   ,  'Pfizer@USA.HEALTH '  ,  18007361834  ),
(6678538 , 'Sputnik'    ,  'Prague , Czech Republic' ,  'Sputnik11@LO.HEALTH'  ,  64103515843  );


INSERT INTO HMO_TABLE (HMOLICENSE , HMONAME , ADDRESS , PHONENUMBER , STOCK , EMAIL , TOWN)
VALUES
(1975  ,'GOODLIFE'      , 'ROAD 16'               ,  313578578  ,  940 , 'goodlife@gmail.com' , 'ADAMSTOWN'),
(1832  ,'HEALTH'        , 'WINE STREET 4'         ,  311578578  ,  76  , 'healthcare@hotmail.com' , 'ADAMSTOWN'),
(1577  ,'OBAMA CARE'    , 'OBAMA STREET 32'       ,  317578588  ,  45  , 'obamacare@us.com' , 'WASHINGTON' ),
(1644  ,'WORLDWIDE HMO' , 'CITY CENTER STREET 23' ,  314858788  ,  530 , 'hmoworld@gmail.com' , 'ADAMSTOWN');


INSERT INTO ORDER_TABLE (OID  , STATUS , QUANTITY , ESTIMATEDDATE , DESTINATION , HMOLICENSE , SLICENSE)
VALUES
( 0 ,'DELIVERED'    ,  786  ,  '2020-11-20 00:45:00'    ,  'ADAMSTOWN' ,   1975 , 1092265 ),
( 76554  , 'IN PROCESS'   ,  567  ,  '2021-01-20 08:50:00'    , 'ADAMSTOWN' ,  1975 ,  1092265  ),
( 0 ,'DELIVERED'    ,  234  ,  '2020-02-05 04:00:00'    , 'ADAMSTOWN' ,  1832 , 6678538 ),
( 96554  , 'SHIPPED'      ,  554  ,  '2019-09-07 07:35:00'    , 'Washington' ,  1577 , 1092265 ),
( 0 ,'DELIVERED'    ,  789  ,  '2018-11-11 06:25:00'    , 'Washington' ,  1577 , 6678538   );


INSERT INTO VACCINE_TABLE (SERIALNUMBER , EXPIRATIONDATE , VIRUSNAME , MAKERID , AVAILABLEINHMOID )
VALUES
(6528 , '2024-02-05'  , 'Covid19' ,  1092265 , 1975),
(0 ,'2024-02-16'   ,  'Covid19' ,1092265 , 1975),
(0 ,'2024-02-08'   ,  'Covid19' ,1092265 , 1975),
(0 ,'2024-02-12'   ,  'Covid19' ,1092265 , 1975),
(1115  ,  '2024-02-05'   ,  'Covid19' ,1092265 , 1975),
(1116  ,  '2024-02-05'   ,  'Covid19' ,1092265 , 1975),
(1117  ,  '2024-02-07'   ,  'Covid19' ,1092265 , 1975),
(1338  ,  '2024-07-07'   ,  'Covid19' ,1092265, 1975),
(1150  ,  '2024-05-10'   ,  'Covid19' ,1092265 , 1975),
(3110  ,  '2022-04-05'   ,  'Covid19' ,1092265 ,1975),
(0 ,'2022-01-25'   ,  'Covid19' ,1092265 , 1975),
(0 ,'2025-03-30'   ,  'Covid19' ,1092265 , 1975),
(0 ,'2021-09-06'   ,  'Covid19' ,1092265 , 1975),
(1110  ,  '2022-04-05'   ,  'Covid19' ,1092265 , 1832),
(6610  ,  '2026-04-04'   ,  'Covid19' ,1092265 , 1975),
(3210  ,  '2022-06-15'   ,  'Covid19' ,1092265 , 1975),
(0 ,'2024-02-25'   ,  'Covid19' ,1092265 , 1975),
(1114  ,  '2024-02-16'   ,  'Covid19' ,6678538 , 1975),
(9119  ,  '2021-06-16'   ,  'Covid19' ,6678538 , 1975),
(3116  ,  '2025-03-05'   ,  'Covid19' ,6678538 , 1832),
(0 ,'2023-05-05'   ,  'Covid19' ,6678538 , 1975),
(1513  ,  '2022-07-05'   ,  'Covid19' ,6678538 , 1975);


INSERT INTO PERSON_TABLE (PID , FNAME , LNAME , DATEOFBIRTH  , PHONENUM , EMAIL , LIVEIN , HMOTREATEDINID)
VALUES
(201312154  , 'Daniel'     ,  'Jones'    ,  '2000-10-16'  , 0506777877  ,  'jones@gmail.com'  , 'ADAMSTOWN'  , 1975 ),
(202227789 ,  'Doron'      ,  'Parker'   ,  '1991-05-17'  ,   0579845575  ,  'DoroPa@walla.com' ,  'ADAMSTOWN' , 1975 ),
(203135874  , 'steve'      ,  'Walker'   ,  '1989-07-10'  ,  0501197851  ,  'steve11@gmail.com' , 'ADAMSTOWN' , 1975 ),
(204444548  , 'Adrian'     ,  'Walker'   ,  '1989-03-26'  ,  0505858777  ,  'Adrian22@gmail.com' , 'ADAMSTOWN' , 1975 ),
(205658458  , 'Aiden'      ,  'Smith'    ,  '1990-06-25'  ,  0508882458  ,  'Aiden65@gmail.com' ,  'ADAMSTOWN' , 1975 ),
(206569874  , 'ella'       ,  'Ortin'    ,  '1980-06-22'  ,  0544444787  ,  'ellao@gmail.com' ,  'ADAMSTOWN' , 1975 ),
(207172698  , 'Mason'      ,  'Ortin'    ,  '2008-03-22'  ,  0527478888  ,  'Mason23@gmail.com' , 'ADAMSTOWN' ,1975 ),
(208781258  ,  'alix'       ,  'Ortin'    ,  '1975-01-24'  ,  0507484444  ,  'alix09@gmail.com' ,  'ADAMSTOWN' ,1975 ),
(209590471  ,  'Tatum'      ,  'Pan'      ,  '2000-07-30'  ,  0549874111  ,  'Tatum99@gmail.com' , 'ADAMSTOWN' ,1975 ),
(325775785  ,  'Taylor'     ,  'Sun'      ,  '1999-05-29'  ,  0537884111  ,  'Taylor88@gmail.com' , 'ADAMSTOWN',1975 ),
(312785288  ,  'Toby'       ,  'Sun'      ,  '1995-02-27'  ,  0507772551  ,  'Toby76@gmail.com' , 'ADAMSTOWN' ,1975  ),
(313578578  ,  'Dana'       ,  'Gabay'    ,  '1974-08-04'  ,  0526655436  ,  'danana@gmail.com' , 'WASHINGTON' , 1577 ),
(311578578  ,  'Elizabeth'  ,  'Parker'   ,  '1958-06-02'  ,  0537787743  ,  'lizzz@walla.com'  , 'ADAMSTOWN' , 1975  ),
(317578588  ,  'Maya'       ,  'Gabay'    ,  '1974-08-04'  ,  0502310450  ,  'mayaGa@gmail.com' , 'ADAMSTOWN' , 1832  ),
(314858788  ,  'John'       ,  'Malloc'   ,  '1958-06-02'  ,  0505555998  ,  'johnMa@walla.com'  , 'ADAMSTOWN', 1832 ),
(319252587  ,   'Lila'       ,  'Smith'    ,  '1974-08-04'  ,  0537258366  ,  'lilalila@gmail.com' , 'ADAMSTOWN' , 1832 );


INSERT INTO MEDICALRECORD_TABLE (FILEID , PID , BLOODTYPE , STOREDINHMOID , VACCINESTATUS)
VALUES
('1A' , 201312154  ,  'A+' , 1975 , 'NOT VACCINATED'),
('2A' , 202227789  ,  'AB+' , 1975 , 'NOT VACCINATED'),
('3A' , 203135874  ,  'B-' , 1975 , 'NOT VACCINATED'),
('4A' , 204444548  ,  'C-' , 1975 , 'NOT VACCINATED'),
('5A' , 205658458  ,  'AB-' , 1975 , 'NOT VACCINATED'),
('6A' , 206569874  ,  'O+' , 1975 , 'NOT VACCINATED'),
('7A' , 207172698  ,  'C+' , 1975 , 'NOT VACCINATED'),
('8A' , 208781258  ,  'A-' , 1975 , 'NOT VACCINATED'),
('9A' , 209590471  ,  'O-' , 1975 , 'NOT VACCINATED'),
('1B' , 325775785  ,  'O-' , 1975  , 'NOT VACCINATED'),
('2B' , 312785288  ,  'B-' , 1975 , 'NOT VACCINATED'),
('3B' , 313578578  ,  'A-' , 1975 , 'NOT VACCINATED'),
('4B' , 311578578  ,  'AB' , 1975 ,'VACCINATED'),
('5B' , 317578588  ,  'O+' ,  1832  ,'VACCINATED'),
('6B' , 319252587  ,  'B+' ,  1832  ,'VACCINATED');

