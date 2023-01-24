-- USE COVIDVACCINE;

/* 1. Show number of vaccine available in goodlife HMO 
SELECT STOCK 
FROM HMO_TABLE
WHERE HMONAME='GOODLIFE';
*/


/* 2 . Show vaccine status of every person who`s vaccinated
SELECT P.FNAME , P.LNAME ,M.VACCINESTATUS
FROM PERSON_TABLE P
INNER JOIN MEDICALRECORD_TABLE M
ON P.PID=M.PID
WHERE M.VACCINESTATUS = 'VACCINATED';
*/


/* 3. show persons first and last name  with bloodtype b+
SELECT FNAME , LNAME 
FROM PERSON_TABLE
WHERE PID IN
( 
SELECT PID 
FROM MEDICALRECORD_TABLE
WHERE BLOODTYPE = 'B+'
);
*/


/* 4. Show details of all people with first name Maya who have already received the vaccine
SELECT * 
FROM PERSON_TABLE
WHERE FNAME = 'Maya' AND PID IN 
(
SELECT PID
FROM MEDICALRECORD_TABLE
WHERE VACCINESTATUS = 'VACCINATED'
);
*/


/* 5. show sum of all stock available in all of HMOs
SELECT SUM(STOCK) AS 'All Available Stock in HMOs'
FROM HMO_TABLE;
*/


/* 6. show people order by names over the age of 40 and not yet vaccinated 
SELECT FNAME , LNAME , YEAR(CURDATE()) - YEAR(DATEOFBIRTH) AS age 
FROM PERSON_TABLE
WHERE YEAR(CURDATE()) - YEAR(DATEOFBIRTH) >= 40 AND PID IN 
(
SELECT PID 
FROM MEDICALRECORD_TABLE M
WHERE VACCINESTATUS = 'NOT VACCINATED'
) order by FNAME;
*/


/* 7. Show Order id for the last 2 orders
SELECT OID , ESTIMATEDDATE
FROM ORDER_TABLE
ORDER BY ESTIMATEDDATE DESC
LIMIT 2;
*/


/* 8. show all people id , phone number
, blood type , vaccine status is not vaccinated and in which hmo they treated 
SELECT P.PID, P.PHONENUM, M.BLOODTYPE , M.VACCINESTATUS , H.HMONAME
FROM PERSON_TABLE P
JOIN MEDICALRECORD_TABLE M 
ON (P.PID = M.PID AND M.VACCINESTATUS='NOT VACCINATED')
JOIN HMO_TABLE H
ON (M.STOREDINHMOID = H.HMOLICENSE);
*/


/* 9.show how many people lives in adamstown 
SELECT COUNT(PID) AS 'people live in adamstown'  
FROM PERSON_TABLE
WHERE LIVEIN = 'ADAMSTOWN';
*/


/* 10.show order id  , customer and supllier names there 
phone number and email 
SELECT O.OID , O.QUANTITY ,  H.HMONAME , H.PHONENUMBER AS 'HMO PHONE'
,S.SNAME , S.PHONENUMBER AS 'SUPPLIER PHONE' 
FROM ORDER_TABLE O
JOIN HMO_TABLE H 
ON (O.HMOLICENSE = H.HMOLICENSE)
JOIN SUPPLIER_TABLE S
ON (O.SLICENSE = S.SLICENSE);
*/


/* 11. count orders maded untill now
SELECT COUNT(OID) AS 'All Orders'
FROM ORDER_TABLE;
*/


/* 12. show how much vaccines every supplier have/maded by and its name 
SELECT S.SNAME AS 'supplier' , COUNT(*) AS 'available vaccines'
FROM SUPPLIER_TABLE S
JOIN VACCINE_TABLE V
ON S.SLICENSE=V.MAKERID
GROUP BY S.SNAME;
*/


/* 13. show details of Supplier with name Pfizer 
SELECT *
FROM SUPPLIER_TABLE
WHERE SNAME LIKE 'Pfizer'
*/


-- UPDATES

/* 14. update vaccine status to vaccinated where person id is 325775785
UPDATE MEDICAlRECORD_TABLE
SET VACCINESTATUS='VACCINATED'
WHERE PID = 325775785 ;
*/


/* 15. add new order with quantity 345 and  estimateddate 2021-04-20 12:45:00 to OBAMA CARE Washington by Pfizer
INSERT INTO ORDER_TABLE (STATUS , QUANTITY , ESTIMATEDDATE , DESTINATION , HMOLICENSE , SLICENSE)
VALUES
( 'IN PROCESS' ,  345  ,  '2021-04-20 12:45:00'    ,  'Washington' ,  1577 , 1092265 );
*/


/* 16. add new side effects discovered 
INSERT INTO SIDEEFFECT_TABLE (VIRUSNAME , SIDEEFFECT)
VALUES ('COVID19','COUGHING');
*/


/* 17. delete oldest order maded
DELETE 
FROM ORDER_TABLE 
ORDER BY ESTIMATEDDATE 
LIMIT 1;
*/



/* 18. Update delivery status in order number 96554
UPDATE ORDER_TABLE
SET STATUS='DELIVERED'
WHERE OID = 96554;
*/

