--REM --insert values in tables


--Workforce_table

insert into Workforce_tab
    values (121, 'Rob Smith', '32800', '5500', '111', Production_Workforce_nt_type(),  null, null);

insert into Workforce_tab
    values (122, 'Bob Bell', '36800', '5600', '112', Production_Workforce_nt_type(),  null, null);

insert into Workforce_tab
    values (123, 'Chris Hill', '30900', '5670', '113', Production_Workforce_nt_type(),  null, null);

insert into Workforce_tab
    values (124, 'John Shore', '32800', '5900', '114', Production_Workforce_nt_type(),  null, null);

insert into Workforce_tab
    values (125, 'Lisa Ford', '39800', '7500', '115', Production_Workforce_nt_type(),  null, null);



--Production_tab

insert into Production_tab
    values (1, 140, 12.66, '26/JUN/2018', '26/MAR/2019', '26/JAN/2019', '26/FEB/2019', 'C', Workforce_nt_type(), Null);

insert into Production_tab
    values (2, 100, 12.68, '25/MAY/2018', '26/APR/2019', '20/MAY/2019', '26/FEB/2019', 'C', Workforce_nt_type(), Null);

insert into Production_tab
    values (3, 160, 10.69, '20/FEB/2018', '26/MAY/2019', '21/MAY/2019', '26/FEB/2019', 'p', Workforce_nt_type(), Null);

insert into Production_tab
    values (4, 170, 16.55, '13/JUN/2018', '26/JAN/2019', '26/FEB/2019', '26/FEB/2019', 'd', Workforce_nt_type(), Null);

insert into Production_tab
    values (5, 190, 12.68, '10/JUN/2018', '26/FEB/2019', '26/JAN/2019', '26/FEB/2019', 'C', Workforce_nt_type(), Null);



--Product_table

Insert into Product_tab values
('11', 'pipe', '20.00', '200.00', Factory_nt_type(), Production_nt_type());
Insert into Product_tab values
('12', 'bolt', '30.00', '300.00', Factory_nt_type(), Production_nt_type());
Insert into Product_tab values
('13', 'nut', '40.00', '400.00', Factory_nt_type(), Production_nt_type());
Insert into Product_tab values
('14', 'flange', '50.00', '500.00', Factory_nt_type(), Production_nt_type());
Insert into Product_tab values
('15', 'valve', '60.00', '600.00', Factory_nt_type(), Production_nt_type());



--Factory_table

Insert into Factory_tab values
('1', 'Newcastle', 'United Kingdom', Product_nt_type(), Workforce_nt_type());
Insert into Factory_tab values
('2', 'Leeds', 'United Kingdom', Product_nt_type(), Workforce_nt_type());
Insert into Factory_tab values
('3', 'Paris', 'France', Product_nt_type(), Workforce_nt_type());
Insert into Factory_tab values
('4', 'London', 'United Kingdom', Product_nt_type(), Workforce_nt_type());
Insert into Factory_tab values
('5', 'Madrid', 'Spain', Product_nt_type(), Workforce_nt_type());



--ForceUsage_table

insert into ForceUsage_tab
values (10, '26/MAR/2019', 10, 12.86, '1');

insert into ForceUsage_tab
values (20, '28/MAR/2019', 11, 11.68, '2');

insert into ForceUsage_tab
values (30, '29/MAR/2019', 15, 10.91, '3');

insert into ForceUsage_tab
values (40, '20/MAR/2019', 40, 18.89, '4');

insert into ForceUsage_tab
values (50, '27/JAN/2019', 80, 19.88, '5');



--REM --Factory

-- product to factory

INSERT INTO TABLE (
  SELECT  p.factory
  FROM   product_tab p
  WHERE  p.productid = '11')
SELECT REF(f)
       FROM factory_Tab f
       WHERE f.factoryid in (1)
/


INSERT INTO TABLE (
  SELECT  p.factory
  FROM   product_tab p
  WHERE  p.productid = '12')
SELECT REF(f)
       FROM factory_Tab f
       WHERE f.factoryid in (2)
/


INSERT INTO TABLE (
  SELECT  p.factory
  FROM   product_tab p
  WHERE  p.productid = '13')
SELECT REF(f)
       FROM factory_Tab f
       WHERE f.factoryid in (3)
/


INSERT INTO TABLE (
  SELECT  p.factory
  FROM   product_tab p
  WHERE  p.productid = '14')
SELECT REF(f)
       FROM factory_Tab f
       WHERE f.factoryid in (4)
/


INSERT INTO TABLE (
  SELECT  p.factory
  FROM   product_tab p
  WHERE  p.productid = '15')
SELECT REF(f)
       FROM factory_Tab f
       WHERE f.factoryid in (5)
/



--  factory to product

INSERT INTO TABLE (
  SELECT  f.product
  FROM   factory_TAB f
  WHERE  f.factoryid = '1')
SELECT REF(p)
       FROM product_Tab p
       WHERE p.productid in ('11')
/


INSERT INTO TABLE (
  SELECT  f.product
  FROM   factory_TAB f
  WHERE  f.factoryid = '2')
SELECT REF(p)
       FROM product_Tab p
       WHERE p.productid in ('12')
/



INSERT INTO TABLE (
  SELECT  f.product
  FROM   factory_TAB f
  WHERE  f.factoryid = '3')
SELECT REF(p)
       FROM product_Tab p
       WHERE p.productid in ('13')
/


INSERT INTO TABLE (
  SELECT  f.product
  FROM   factory_TAB f
  WHERE  f.factoryid = '4')
SELECT REF(p)
       FROM product_Tab p
       WHERE p.productid in ('14')
/



INSERT INTO TABLE (
  SELECT  f.product
  FROM   factory_TAB f
  WHERE  f.factoryid = '5')
SELECT REF(p)
       FROM product_Tab p
       WHERE p.productid in ('15')
/




--REM workforce to factory


INSERT INTO TABLE (
  SELECT  f.workforce
  FROM   factory_TAB f
  WHERE  f.factoryid = '1')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('121')
/

INSERT INTO TABLE (
  SELECT  f.workforce
  FROM   factory_TAB f
  WHERE  f.factoryid = '2')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('122')
/

INSERT INTO TABLE (
  SELECT  f.workforce
  FROM   factory_TAB f
  WHERE  f.factoryid = '3')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('123')
/


INSERT INTO TABLE (
  SELECT  f.workforce
  FROM   factory_TAB f
  WHERE  f.factoryid = '4')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('124')
/

INSERT INTO TABLE (
  SELECT  f.workforce
  FROM   factory_TAB f
  WHERE  f.factoryid = '5')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('125')
/



--REM PRODUCT

INSERT INTO TABLE (
  SELECT  p.production
  FROM   product_TAB p
  WHERE  p.productid = '11')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodOrderId in ('1')
/


INSERT INTO TABLE (
  SELECT  p.production
  FROM   product_TAB p
  WHERE  p.productid = '12')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodOrderId in ('2')
/


INSERT INTO TABLE (
  SELECT  p.production
  FROM   product_TAB p
  WHERE  p.productid = '13')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodOrderId in ('3')
/

INSERT INTO TABLE (
  SELECT  p.production
  FROM   product_TAB p
  WHERE  p.productid = '14')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodOrderId in ('4')
/


INSERT INTO TABLE (
  SELECT  p.production
  FROM   product_TAB p
  WHERE  p.productid = '15')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodOrderId in ('5')
/



--REM PRODUCTION


INSERT INTO TABLE (
  SELECT  pr.workforce
  FROM   production_TAB pr
  WHERE  pr.prodorderid = '1')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('121')
/

INSERT INTO TABLE (
  SELECT  pr.workforce
  FROM   production_TAB pr
  WHERE  pr.prodorderid = '2')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('122')
/

INSERT INTO TABLE (
  SELECT  pr.workforce
  FROM   production_TAB pr
  WHERE  pr.prodorderid = '3')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('123')
/

INSERT INTO TABLE (
  SELECT  pr.workforce
  FROM   production_TAB pr
  WHERE  pr.prodorderid = '4')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('124')
/

INSERT INTO TABLE (
  SELECT  pr.workforce
  FROM   production_TAB pr
  WHERE  pr.prodorderid = '5')
SELECT REF(w)
       FROM workforce_Tab w
       WHERE w.wfid in ('125')
/



--REM- production into workforce


INSERT INTO TABLE (
  SELECT  w.production
  FROM   workforce_TAB w
  WHERE  w.wfid = '121')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodorderid in ('1')
/


INSERT INTO TABLE (
  SELECT  w.production
  FROM   workforce_TAB w
  WHERE  w.wfid = '122')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodorderid in ('2')
/

INSERT INTO TABLE (
  SELECT  w.production
  FROM   workforce_TAB w
  WHERE  w.wfid = '123')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodorderid in ('3')
/

INSERT INTO TABLE (
  SELECT  w.production
  FROM   workforce_TAB w
  WHERE  w.wfid = '124')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodorderid in ('4')
/

INSERT INTO TABLE (
  SELECT  w.production
  FROM   workforce_TAB w
  WHERE  w.wfid = '125')
SELECT REF(pr)
       FROM production_Tab pr
       WHERE pr.prodorderid in ('5')
/



--product_ref in production


UPDATE production_TAB
SET product_REF = (SELECT REF(p) FROM product_TAB p WHERE p.productId = '11')
WHERE prodOrderId = '1';

UPDATE production_TAB
SET product_REF = (SELECT REF(p) FROM product_TAB p WHERE p.productId = '12')
WHERE prodOrderId = '2';

UPDATE production_TAB
SET product_REF = (SELECT REF(p) FROM product_TAB p WHERE p.productId = '13')
WHERE prodOrderId = '3';

UPDATE production_TAB
SET product_REF = (SELECT REF(p) FROM product_TAB p WHERE p.productId = '14')
WHERE prodOrderId = '4';

UPDATE production_TAB
SET product_REF = (SELECT REF(p) FROM product_TAB p WHERE p.productId = '15')
WHERE prodOrderId = '5';


--REM WORKFORCE

--Factory_ref in workforce


UPDATE workforce_TAB
SET factory_REF = (SELECT REF(f) FROM factory_TAB f WHERE f.factoryId = '1')
WHERE wfid = '121';

UPDATE workforce_TAB
SET factory_REF = (SELECT REF(f) FROM factory_TAB f WHERE f.factoryId = '2')
WHERE wfid = '122';

UPDATE workforce_TAB
SET factory_REF = (SELECT REF(f) FROM factory_TAB f WHERE f.factoryId = '3')
WHERE wfid = '123';

UPDATE workforce_TAB
SET factory_REF = (SELECT REF(f) FROM factory_TAB f WHERE f.factoryId = '4')
WHERE wfid = '124';

UPDATE workforce_TAB
SET factory_REF = (SELECT REF(f) FROM factory_TAB f WHERE f.factoryId = '5')
WHERE wfid = '125';


---  Forceusage_ref in workforce

UPDATE workforce_TAB
SET forceusage_REF = (SELECT REF(fu) FROM forceusage_TAB fu WHERE fu.fuId = '10')
WHERE wfid = '121';

UPDATE workforce_TAB
SET forceusage_REF = (SELECT REF(fu) FROM forceusage_TAB fu WHERE fu.fuId = '20')
WHERE wfid = '122';

UPDATE workforce_TAB
SET forceusage_REF = (SELECT REF(fu) FROM forceusage_TAB fu WHERE fu.fuId = '30')
WHERE wfid = '123';

UPDATE workforce_TAB
SET forceusage_REF = (SELECT REF(fu) FROM forceusage_TAB fu WHERE fu.fuId = '40')
WHERE wfid = '124';

UPDATE workforce_TAB
SET forceusage_REF = (SELECT REF(fu) FROM forceusage_TAB fu WHERE fu.fuId = '50')
WHERE wfid = '125';
