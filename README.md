##About this Assignment
Databases store, organize, collect, and retrieve data, and, given the amount of data some databases store, how they're built can seem disjointed and confusing. To overcome these obstacles and make databases useful, computer scientists developed complex algorithms and database designs to create efficient and accessible databases. Relational databases are an example of this type of solution. They store data in tables that are related by different unique keys so that relevant data is stored together, but different data combinations can still be retrieved using the unique identifying keys.

In this assignment, you will explore these topics by creating a simple query to retrieve data, normalize a sample database, and design an entity relationship diagram (ERD).

Part 1 - Retrieve Data From a Database
Consider the following sample database.

Figure 1: ERD for Library Database
ERD diagram
Given the following sample data, you will see that certain tables are linked via primary and foreign keys (e.g., Client and Borrower: ClientId is on both tables).

Write the following SQL statements to retrieve data:

Select all borrowers
Select all books borrowed by borrowers, order by borrow date
Select all books and include the author first and last name
Insert a new client with an occupation of pilot
Note that your queries will not return data, unless you would like to create and set up a functioning database. The purpose of this exercise is to ensure you are able to write fully-formed and appropriate SQL statements.

Part Two - Database Normalization
Write a brief 500 to 750 word essay that evaluates the miniature database below. Currently, the database is not in third normal form (3NF). Your analysis should identify the dependencies that exist in the current database setup and explain the steps needed to transform it to third normal form.

Miniature Database
Following is the table structure for the tables in the current database.

Table Structure for Produce

COLUMN_NAME	DATA_TYPE	NULLABLE
ITEMID	CHAR (5)	No
SUPPLIERID	CHAR (10)	No
PLUCODE	CHAR (4,2)	No
PRODUCENAME	CHAR (15)	No
TYPE	CHAR (10)	No
STOCKQTY	NUMBER (4,2)	No
NXTDELIVERY	DATE	No
Table Structure for Animal Products:

COLUMN_NAME	DATA_TYPE	NULLABLE
ITEMID	CHAR (5)	No
SUPPLIERID	CHAR (10)	No
ANPRDNAME	CHAR (15)	No
TYPE	CHAR (10)	No
STOCKQTY	NUMBER(4,2)	No
NXTDELIVERY	DATE	Yes
Table Structure for Grains:

COLUMN_NAME	DATA_TYPE	NULLABLE
ITEMID	CHAR (5)	No
SUPPLIERID	CHAR (10)	No
GRAINNAME	CHAR (15)	No
TYPE	CHAR (10)	No
STOCKQTY	NUMBER(4,2)	No
NXTDELIVERY	DATE	Yes
Table Structure of Suppliers:

COLUMN_NAME	DATA_TYPE	NULLABLE
SUPPLIERID	CHAR (10)	No
LASTDELIVERY	DATE	Yes
SPECIALTY	CHAR (15)	Yes
ACTIVE	CHAR (1)	No
Table Structure of Purchases:

COLUMN_NAME	DATA_TYPE	NULLABLE
ITEMID	CHAR (5)	No
TOTALBOUGHT	NUMBER (8,2)	Yes
TOTALSOLD	NUMBER(8,2)	Yes
TOTALREV	NUMBER(10,2)	Yes
MARGIN	NUMBER(10,2)	Yes
Part Three - Develop an ERD - Entity Relationship Diagram
Now that you have identified the steps necessary to bring this database to third normal form (3NF), you will create a diagram that displays the new layout and the relationships between the tables. It should depict how you successfully removed dependencies in the tables to create a relational database model.

Formatting & Sources
Save your final assignment in Microsoft Word, pasting in the SQL query that you had created and your analysis of how the sample database can be normalized to 3NF. You can create the ERD using Word drawing tools, or a free charting tool such as Lucidchart. Be sure to take a screen capture of the final diagram and paste into the Word document.

For the essay portion, please use APA format. You may refer to the course material for supporting evidence. You may also use other sources as needed, but please make sure you cite them using APA format. If you use any Study.com lessons as sources, please also cite them in APA (including the lesson title and instructor's name). If you are unsure about how to use APA format for your paper and sources, please see the following lessons: