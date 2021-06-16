retries=0
while :
do
  if wp core install --url="localhost:8000" --title="test deploy wp" --admin_user="admin" --admin_password="admin@pass" --admin_email="admin@domain.com"
  then
    break
  else
    retries=$((retries+1))
    echo "Couldn't connect to DB. Try - ${retries}. Sleeping 5 seconds and will retry ..."
    sleep 5
  fi
  if [ "${retries}" -eq "10" ]
  then
    echo "Couldn't connect to DB. Exiting."
    exit 1
  fi
done
wp plugin install two-factor --activate