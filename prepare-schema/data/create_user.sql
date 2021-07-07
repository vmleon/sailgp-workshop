create user sailor6 identified by Oracle12345!;
grant dwrole to sailor6;
GRANT OML_DEVELOPER TO sailor6;
GRANT DWROLE TO sailor6;
GRANT PYQADMIN TO sailor6;
ALTER USER sailor6 GRANT CONNECT THROUGH OML$PROXY;
alter user sailor6 quota unlimited on data;
GRANT CREATE SESSION TO sailor6;
GRANT CREATE TABLE TO sailor6;
GRANT CREATE VIEW TO sailor6;
GRANT CREATE MINING MODEL TO sailor6;
GRANT EXECUTE ON CTXSYS.CTX_DDL TO sailor6;
GRANT CREATE MINING MODEL TO sailor6;
GRANT SELECT ANY MINING MODEL TO sailor6;
GRANT DROP ANY MINING MODEL TO sailor6;
GRANT SELECT ANY MINING MODEL TO sailor6;
GRANT COMMENT ANY MINING MODEL TO sailor6;
BEGIN
ORDS.ENABLE_SCHEMA(p_enabled => TRUE,
p_schema => 'SAILOR6',
p_url_mapping_type => 'BASE_PATH',
p_url_mapping_pattern => 'sailor6',
p_auto_rest_auth => TRUE);
commit;
END;
/
