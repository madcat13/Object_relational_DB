REM creating object types and object-tables 

CREATE TYPE Factory_t
/
CREATE TYPE Workforce_t
/
CREATE TYPE Product_t
/
CREATE TYPE Production_t
/
CREATE TYPE ForceUsage_t
/
CREATE or replace TYPE Product_nt_type AS TABLE of REF Product_t
/
CREATE or replace TYPE Workforce_nt_type AS TABLE of REF Workforce_t
/


CREATE OR REPLACE TYPE Factory_t AS OBJECT
    (FactoryId      NUMBER(6),
     Location       VARCHAR(50),
     Country        VARCHAR(50),
     Product Product_nt_type,
     Workforce Workforce_nt_type)
    /



CREATE OR REPLACE TYPE Production_nt_type AS TABLE of REF Production_t
/
CREATE OR REPLACE TYPE Factory_nt_type as TABLE OF REF Factory_t
/


CREATE OR REPLACE TYPE Product_t AS OBJECT
    (ProductId         NUMBER(6),
     Describtion       VARCHAR(50),
     CostPerItem       NUMBER(8, 2),
     LabCostPerItem    NUMBER(8, 2),
     Factory   Factory_nt_type,
     Production    Production_nt_type)
    /



CREATE OR REPLACE TYPE Production_t AS OBJECT
    (prodOrderId     NUMBER(6),
     quantity        NUMBER(6),
     itemPrice       NUMBER(8, 2),
     orderDate       DATE,
     promiseDate     DATE,
     completionDate  DATE,
     shipmentDate    DATE,
     status          CHAR,
     Workforce Workforce_nt_type,
     product_REF     REF Product_t)
    /



CREATE OR REPLACE TYPE Production_Workforce_nt_type AS TABLE of REF Production_t
/


CREATE OR REPLACE TYPE Workforce_t AS OBJECT
    (WfId           NUMBER(6),
     WfName         VARCHAR(30),
     yearlyIncome   NUMBER(8, 2),
     yearlyTax      NUMBER(8, 2),
     taxCode        NUMBER(6),
     Production Production_Workforce_nt_type,
     factory_REF    REF Factory_t,
     forceusage_ref REF ForceUsage_t)
    /


CREATE OR REPLACE TYPE Production_ForceUsage_nt_type AS TABLE of REF Production_t
/
CREATE OR REPLACE TYPE Workforce_ForceUsage_nt_type AS TABLE of REF Workforce_t
/

CREATE OR REPLACE TYPE ForceUsage_t AS OBJECT

    (FUId            number(6),
     jobDate         DATE,
     jobHours        NUMBER(6),
     jobHourlyRate   NUMBER(8, 2),
     jobPosted       CHAR)
    /
