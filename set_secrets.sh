echo "Setting required secrets at fly.io..."

# "Supabase service role secret (https://supabase.com/dashboard/project/_/settings/api)"
flyctl secrets set SUPABASESERVICEROLESECRET="$SUPABASE_SERVICE_ROLE_JWT"

# "Supabase project url (https://supabase.com/dashboard/project/_/settings/api)"
# "(exclude the https:// part, example.: zzzzzzzzzzzzzzzzzzzz.supabase.co)"
flyctl secrets set SUPABASEPROJECTURL="$SUPABASE_PROJECT_ID.supabase.co"

# "Grafana prometheus remote write endpoint"
# "grafana cloud / my account / prometheus details / remote write endpoint"
flyctl secrets set REMOTEWRITEENDPOINT="$GRAFANA_REMOTE_WRITE_ENDPOINT"

# "Grafana prometheus Username"
# "grafana cloud / my account / prometheus details / (Username / Instance ID)"
flyctl secrets set REMOTEUSERNAME="$GRAFANA_API_INSTANCEID"

# "Grafana prometheus remote write password"
# "grafana cloud / my account / prometheus details / (Password / API Key)"
flyctl secrets set REMOTEWRITEPASSWORD="$GRAFANA_API_TOKEN"

