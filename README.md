# Covid19_sql

> The project was built in MySQLWorkbench


### `Description `
---
- The main purpose of the database is to help provide vaccines for a small town.
- The system collects information about the orders of the vaccines and the quantity required from the manufacturer, tracking the shipment to the HMO (health maintenance organization) of the designated city, through monitoring the administration of vaccines to the entire population of the Town.

### `Users Of The Database `
---
- HMO - Uses the database for estimating the amount of vaccines required by population size and places an order accordingly and make the connection between the vaccine and population . 

- Supplier - Uses the database to obtain information about orders through the HMOs and takes care of the production and delivery of vaccines.

### `ERD `
---
<img width="467" alt="image" src="https://user-images.githubusercontent.com/72464761/214427889-9b82acde-648f-46bd-923d-1d6684759cdf.png">

### `QUERIES `
---
#### `ACTIONS `
- Show number of vaccine available in specific HMO 
- Show vaccine status of every person who`s vaccinated
- show persons first and last name  with specific  blood type 
- Show details of all people with first name Maya who have already received the vaccine
- show sum of all stock available in all of HMOs
- show people order by names over the age of 40 and not yet vaccinated
- Show Order id for the last 2 orders
- show all people id , phone number, blood type , vaccine status is not vaccinated and in witch HMO they treated
- show how many people lives in specific town
- show order id  , customer and supplier names there phone number and email
- count orders maded untill now
- show how much vaccines every supplier have/maded by and its name
- show details of Supplier with specific  name 

#### `UPDATES `
- update vaccine in status where  specific person id
- add new order with specific Details 
- add new side effects discovered
- delete oldest order maded
- Update delivery status in specific order


###### ` Fun Fact `
Adamstown has a population of 50, which is the entire population of the Pitcairn Islands. So one shipment will be enough…












