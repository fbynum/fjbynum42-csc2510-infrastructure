#!/bin/bash

if $1 > 0; then
  mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD($1);"
  mysql -u root -e "FLUSH PRIVILEGES;"
  echo "success"
else

  echo "error"

fi

