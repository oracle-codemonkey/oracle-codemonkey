drop table sys.genddl_store;

create table sys.genddl_store
 (id           NUMBER        GENERATED BY DEFAULT ON NULL AS IDENTITY,
  object_schema  varchar2(50),
  object_type   varchar2(50),
  object_name   varchar2(50),
  dependent_type varchar2(50),
  dependent_name   varchar2(50),
  ddl clob);

truncate table sys.genddl_store;

exec mygenddl(p_type => 'SEQUENCE', p_schema => 'HR', p_name => 'DEPARTMENTS_SEQ');
exec mygenddl(p_type => 'SEQUENCE', p_schema => 'HR', p_name => 'EMPLOYEES_SEQ');
exec mygenddl(p_type => 'SEQUENCE', p_schema => 'HR', p_name => 'LOCATIONS_SEQ');
exec mygenddl(p_type => 'TABLE', p_schema => 'HR', p_name => 'COUNTRIES');
exec mygenddl(p_type => 'TABLE', p_schema => 'HR', p_name => 'DEPARTMENTS');
exec mygenddl(p_type => 'TABLE', p_schema => 'HR', p_name => 'EMPLOYEES');
exec mygenddl(p_type => 'TABLE', p_schema => 'HR', p_name => 'JOBS');
exec mygenddl(p_type => 'TABLE', p_schema => 'HR', p_name => 'JOB_HISTORY');
exec mygenddl(p_type => 'TABLE', p_schema => 'HR', p_name => 'LOCATIONS');
exec mygenddl(p_type => 'TABLE', p_schema => 'HR', p_name => 'REGIONS');
exec mygenddl(p_type => 'VIEW', p_schema => 'HR', p_name => 'EMP_DETAILS_VIEW');
exec mygenddl(p_type => 'PROCEDURE', p_schema => 'HR', p_name => 'ADD_JOB_HISTORY');
exec mygenddl(p_type => 'PROCEDURE', p_schema => 'HR', p_name => 'SECURE_DML');
exec mygenddl(p_type => 'TRIGGER', p_schema => 'HR', p_name => 'SECURE_EMPLOYEES');
exec mygenddl(p_type => 'TRIGGER', p_schema => 'HR', p_name => 'UPDATE_JOB_HISTORY');

exec mygenddl(p_type => 'SEQUENCE', p_schema => 'OE', p_name => 'ORDERS_SEQ');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'BOOK_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'CATALOG_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'CATALOG_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'CATEGORY_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'CATEGORY_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'COMPOSITE_CATEGORY_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'COMPOSITE_CATEGORY_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'CORPORATE_CUSTOMER_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'CUSTOMER_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'CUST_ADDRESS_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'INVENTORY_LIST_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'INVENTORY_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'LEAF_CATEGORY_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'LEAF_CATEGORY_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'ORDERITEMLIST_VARTYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'ORDERITEM_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'ORDER_ITEM_LIST_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'ORDER_ITEM_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'ORDER_LIST_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'ORDER_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'PHONE_LIST_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'PRODUCT_INFORMATION_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'PRODUCT_REF_LIST_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'SUBCATEGORY_REF_LIST_TYP');
exec mygenddl(p_type => 'TYPE_SPEC', p_schema => 'OE', p_name => 'WAREHOUSE_TYP');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'CATEGORIES_TAB');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'CATEGORIES_TAB2');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'CUSTOMERS');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'INVENTORIES');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'ORDERS');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'ORDER_ITEMS');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'PRODUCT_DESCRIPTIONS');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'PRODUCT_INFORMATION');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'PROMOTIONS');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'WAREHOUSES');
exec mygenddl(p_type => 'TABLE', p_schema => 'OE', p_name => 'WAREHOUSES2');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'ACCOUNT_MANAGERS');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'BOMBAY_INVENTORY');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'CUSTOMERS_VIEW');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'OC_CORPORATE_CUSTOMERS');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'OC_CUSTOMERS');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'OC_INVENTORIES');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'OC_ORDERS');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'OC_PRODUCT_INFORMATION');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'ORDERS_VIEW');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'PRODUCTS');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'PRODUCT_PRICES');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'SYDNEY_INVENTORY');
exec mygenddl(p_type => 'VIEW', p_schema => 'OE', p_name => 'TORONTO_INVENTORY');
exec mygenddl(p_type => 'FUNCTION', p_schema => 'OE', p_name => 'GET_PHONE_NUMBER_F');
exec mygenddl(p_type => 'PROCEDURE', p_schema => 'OE', p_name => 'USER_LOGOFF');
exec mygenddl(p_type => 'PROCEDURE', p_schema => 'OE', p_name => 'USER_LOGON');
exec mygenddl(p_type => 'AQ_QUEUE', p_schema => 'OE', p_name => 'LOGON_LOGOFF');
exec mygenddl(p_type => 'TRIGGER', p_schema => 'OE', p_name => 'INSERT_ORD_LINE');
exec mygenddl(p_type => 'TRIGGER', p_schema => 'OE', p_name => 'ORDERS_ITEMS_TRG');
exec mygenddl(p_type => 'TRIGGER', p_schema => 'OE', p_name => 'ORDERS_TRG');
exec mygenddl(p_type => 'TYPE_BODY', p_schema => 'OE', p_name => 'CATALOG_TYP');
exec mygenddl(p_type => 'TYPE_BODY', p_schema => 'OE', p_name => 'COMPOSITE_CATEGORY_TYP');
exec mygenddl(p_type => 'TYPE_BODY', p_schema => 'OE', p_name => 'LEAF_CATEGORY_TYP');

exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'CAL_MONTH_SALES_MV');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'CHANNELS');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'COSTS');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'COUNTRIES');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'CUSTOMERS');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'FWEEK_PSCAT_SALES_MV');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'PRODUCTS');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'PROMOTIONS');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'SALES');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'SALES_TRANSACTIONS_EXT');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'SUPPLEMENTARY_DEMOGRAPHICS');
exec mygenddl(p_type => 'TABLE', p_schema => 'SH', p_name => 'TIMES');
exec mygenddl(p_type => 'VIEW', p_schema => 'SH', p_name => 'PROFITS');
exec mygenddl(p_type => 'DIMENSION', p_schema => 'SH', p_name => 'CHANNELS_DIM');
exec mygenddl(p_type => 'DIMENSION', p_schema => 'SH', p_name => 'CUSTOMERS_DIM');
exec mygenddl(p_type => 'DIMENSION', p_schema => 'SH', p_name => 'PRODUCTS_DIM');
exec mygenddl(p_type => 'DIMENSION', p_schema => 'SH', p_name => 'PROMOTIONS_DIM');
exec mygenddl(p_type => 'DIMENSION', p_schema => 'SH', p_name => 'TIMES_DIM');
exec mygenddl(p_type => 'MATERIALIZED_VIEW', p_schema => 'SH', p_name => 'CAL_MONTH_SALES_MV');
exec mygenddl(p_type => 'MATERIALIZED_VIEW', p_schema => 'SH', p_name => 'FWEEK_PSCAT_SALES_MV');

commit;

select dependent_type, count(1) from sys.genddl_store group by dependent_type;

select * from sys.genddl_store order by id;

/*
drop table hr.employees2
*/ 


