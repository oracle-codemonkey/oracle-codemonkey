select 'exec mygenddl(p_type => '''||object_type||''', p_schema => '''||owner||''', p_name => '''||object_name||''');'
from
(
    --Convert DBA_OBJECTS.OBJECT_TYPE to DBMS_METADATA object type:
    select
        owner,
        --Java object names may need to be converted with DBMS_JAVA.LONGNAME.
        --That code is not included since many database don't have Java installed.
        object_name,
        object_type actual_object_type,
        decode(object_type,
            'DATABASE LINK',      'DB_LINK',
            'JOB',                'PROCOBJ',
            'RULE SET',           'PROCOBJ',
            'RULE',               'PROCOBJ',
            'EVALUATION CONTEXT', 'PROCOBJ',
            'CREDENTIAL',         'PROCOBJ',
            'CHAIN',              'PROCOBJ',
            'PROGRAM',            'PROCOBJ',
            'PACKAGE',            'PACKAGE_SPEC',
            'PACKAGE BODY',       'PACKAGE_BODY',
            'TYPE',               'TYPE_SPEC',
            'TYPE BODY',          'TYPE_BODY',
            'MATERIALIZED VIEW',  'MATERIALIZED_VIEW',
            'QUEUE',              'AQ_QUEUE',
            'JAVA CLASS',         'JAVA_CLASS',
            'JAVA TYPE',          'JAVA_TYPE',
            'JAVA SOURCE',        'JAVA_SOURCE',
            'JAVA RESOURCE',      'JAVA_RESOURCE',
            'XML SCHEMA',         'XMLSCHEMA',
            object_type
        ) object_type
    from dba_objects 
    where owner in ('HR','SH','OE')
        --These objects are included with other object types.
        and object_type not in ('INDEX PARTITION','INDEX SUBPARTITION','INDEX','SYNONYM', 
           'LOB','LOB PARTITION','TABLE PARTITION','TABLE SUBPARTITION' )
        --Ignore system-generated types that support collection processing.
        and not (object_type = 'TYPE' and object_name like 'SYS_PLSQL_%')
        and object_name not like '%$%'
        and object_name not like 'SYS_%'
        --Exclude nested tables, their DDL is part of their parent table.
        and (owner, object_name) not in (select owner, table_name from dba_nested_tables)
        --Exclude overflow segments, their DDL is part of their parent table.
        and (owner, object_name) not in (select owner, table_name from dba_tables where iot_type = 'IOT_OVERFLOW' or nested = 'YES')
)
order by owner, decode(object_type,'SEQUENCE',1, 'TYPE_SPEC', 2, 'TABLE', 3, 'VIEW', 4, 'FUNCTION', 5 , 'PROCEDURE', 6, 'PACKAGE_SPEC', 7, 99), object_type, object_name;



select distinct object_type
    from dba_objects 
    where owner in ('SH')
        --These objects are included with other object types.
        and object_type not in ('INDEX PARTITION','INDEX SUBPARTITION', 
           'LOB','LOB PARTITION','TABLE PARTITION','TABLE SUBPARTITION' )
        --Ignore system-generated types that support collection processing.
        and not (object_type = 'TYPE' and object_name like 'SYS_PLSQL_%')
        and generated = 'N'
        and object_name not like '%$%'
        --Exclude nested tables, their DDL is part of their parent table.
        and (owner, object_name) not in (select owner, table_name from dba_nested_tables)
        --Exclude overflow segments, their DDL is part of their parent table.
        and (owner, object_name) not in (select owner, table_name from dba_tables where iot_type = 'IOT_OVERFLOW' or nested = 'YES')


SH.CUSTOMERS_DIM


select *
from v$sqlarea
where upper(sql_text) like '%DIM%';


select dbms_metadata.get_ddl('DIMENSION','CUSTOMERS_DIM','SH') from dual;