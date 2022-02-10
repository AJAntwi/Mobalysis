#!/bin/sh
#Write a shell script that installs postgresql, adds a user with the username mob_db_user and a password
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install postgresql -y
sudo su postgres
psql -U postgres -c "CREATE ROLE mod_db_user;"
psql -U postgres -c "ALTER USER  ubuntu  WITH PASSWORD 'mod_db_pass';"
exit