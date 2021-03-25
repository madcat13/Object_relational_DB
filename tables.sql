--REM create tables

 CREATE TABLE Factory_tab of Factory_t
 (PRIMARY KEY (FactoryId))
NESTED TABLE Product STORE AS Fac_Product_NTab,
NESTED TABLE Workforce STORE AS Fac_Workforce_NTab
/

 CREATE TABLE Product_tab of Product_t
 (PRIMARY KEY (ProductId))
NESTED TABLE Factory STORE AS Product_Factory_NTab,
NESTED TABLE Production STORE AS Product_Production_NTab
/

 CREATE TABLE Production_tab of Production_t
 (PRIMARY KEY (prodOrderId))
NESTED TABLE Workforce STORE AS Production_Workforce_NTab
/

 CREATE TABLE Workforce_tab of Workforce_t
 (PRIMARY KEY (WfId))
NESTED TABLE Production STORE AS Workf_Production_NTab
/

CREATE TABLE ForceUsage_tab of ForceUsage_t
 (PRIMARY KEY (FUId))
/


--REM set foreign keys

ALTER TABLE Production_tab Add constraint
product_REF_FK Foreign Key (product_Ref) References Product_tab;

ALTER TABLE Workforce_tab Add constraint
factory_REF_FK Foreign Key (factory_Ref) References Factory_tab;
