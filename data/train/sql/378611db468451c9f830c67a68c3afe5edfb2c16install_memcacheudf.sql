DROP FUNCTION IF EXISTS memc_add ;
DROP FUNCTION IF EXISTS memc_add_by_key ;
DROP FUNCTION IF EXISTS memc_servers_set ;
DROP FUNCTION IF EXISTS memc_server_count ;
DROP FUNCTION IF EXISTS memc_set ;
DROP FUNCTION IF EXISTS memc_set_by_key ;
DROP FUNCTION IF EXISTS memc_cas ;
DROP FUNCTION IF EXISTS memc_cas_by_key ;
DROP FUNCTION IF EXISTS memc_get ;
DROP FUNCTION IF EXISTS memc_get_by_key ;
DROP FUNCTION IF EXISTS memc_get_cas ;
DROP FUNCTION IF EXISTS memc_get_cas_by_key ;
DROP FUNCTION IF EXISTS memc_delete ;
DROP FUNCTION IF EXISTS memc_delete_by_key ;
DROP FUNCTION IF EXISTS memc_append ;
DROP FUNCTION IF EXISTS memc_append_by_key ;
DROP FUNCTION IF EXISTS memc_prepend ;
DROP FUNCTION IF EXISTS memc_prepend_by_key ;
DROP FUNCTION IF EXISTS memc_increment ;
DROP FUNCTION IF EXISTS memc_decrement ;
DROP FUNCTION IF EXISTS memc_replace ;
DROP FUNCTION IF EXISTS memc_replace_by_key ;

DROP FUNCTION IF EXISTS memc_servers_behavior_set ;
DROP FUNCTION IF EXISTS memc_servers_behavior_get ;
DROP FUNCTION IF EXISTS memc_behavior_set ;
DROP FUNCTION IF EXISTS memc_behavior_get ;
DROP FUNCTION IF EXISTS memc_list_behaviors ;
DROP FUNCTION IF EXISTS memc_list_hash_types ;
DROP FUNCTION IF EXISTS memc_list_distribution_types ;

DROP FUNCTION IF EXISTS memc_udf_version ;
DROP FUNCTION IF EXISTS memc_libmemcached_version ;
DROP FUNCTION IF EXISTS memc_stats ;
DROP FUNCTION IF EXISTS memc_stat_get_keys ;
DROP FUNCTION IF EXISTS memc_stat_get_value ;

CREATE FUNCTION memc_add RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_add_by_key RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_servers_set RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_server_count RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_set RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_set_by_key RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_cas RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_cas_by_key RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_get RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_get_by_key RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_get_cas RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_get_cas_by_key RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_delete RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_delete_by_key RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_append RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_append_by_key RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_prepend RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_prepend_by_key RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_increment RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_decrement RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_replace RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_replace_by_key RETURNS INT SONAME 'libmemcached_functions_mysql.so';

CREATE FUNCTION memc_servers_behavior_set RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_servers_behavior_get RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_behavior_set RETURNS INT SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_behavior_get RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_list_behaviors RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_list_hash_types RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_list_distribution_types RETURNS STRING SONAME 'libmemcached_functions_mysql.so';

CREATE FUNCTION memc_udf_version RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_libmemcached_version RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_stats RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_stat_get_keys RETURNS STRING SONAME 'libmemcached_functions_mysql.so';
CREATE FUNCTION memc_stat_get_value RETURNS STRING SONAME 'libmemcached_functions_mysql.so';

