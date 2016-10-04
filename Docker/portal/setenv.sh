export CATALINA_OPTS="$CATALINA_OPTS -server"
export CATALINA_OPTS="$CATALINA_OPTS -XX:MaxPermSize=1024m"
export CATALINA_OPTS="$CATALINA_OPTS -Xmx1024m"
export CATALINA_OPTS="$CATALINA_OPTS -Xms1024m"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+HeapDumpOnOutOfMemoryError"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+CMSClassUnloadingEnabled"
export CATALINA_OPTS="$CATALINA_OPTS -XX:HeapDumpPath=/heapdumps"
export CATALINA_OPTS="$CATALINA_OPTS -XX:SoftRefLRUPolicyMSPerMB=36000"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseParallelGC"
export CATALINA_OPTS="$CATALINA_OPTS -Djava.awt.headless=true"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_db=$cch_db_hostname"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_db_schema=$cch_db_schema"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_db_username=$cch_db_username"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_db_password=$cch_db_password"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_auth_service_endpoint=$cch_auth_service_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_public_url=$cch_public_url"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_base_url=$cch_base_url"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_base_secure_url=$cch_base_secure_url"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_go_usa_login=$cch_go_usa_login"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_go_usa_apikey=$cch_go_usa_apikey"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_go_usa_endpoint=$cch_go_usa_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_stpetearcserver_endpoint=$cch_stpetearcserver_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_coastalmarine_endpoint=$cch_coastalmarine_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_cidags_endpoint=$cch_cidags_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_geoserver_endpoint=$cch_geoserver_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_portal_geoserver_endpoint=$cch_portal_geoserver_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_n52_endpoint=$cch_n52_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_csw_endpoint=$cch_csw_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_csw_internal_endpoint=$cch_csw_internal_endpoint"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_upload_max_size=$cch_upload_max_size"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_upload_filename_param=$cch_upload_filename_param"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_files_directory_base=$cch_files_directory_base"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_files_directory_work=$cch_files_directory_work"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_files_directory_upload=$cch_files_directory_upload"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_files_directory_download=$cch_files_directory_download"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_geoserver_datadir=$cch_geoserver_datadir"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_geoserver_workspace_published=$cch_geoserver_workspace_published"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_geoserver_username=$cch_geoserver_username"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_geoserver_password=$cch_geoserver_password"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_is_production=$cch_is_production"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_is_development=$cch_is_development"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_http_port=${cch_http_port}"
export CATALINA_OPTS="$CATALINA_OPTS -Dcch_https_port=${cch_https_port}"


