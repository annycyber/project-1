#!/bin/bash
#Created by Achiever
#Title - Apache Server Scripts

# step 1 - install apache2 and redirect output to /dev/null


if [[ $UID -eq 0 ]];

then
  command -v apache2
  if [[ $? -eq 0 ]];
    then
         cd /var/www/html/

         wget https://github.com/startbootstrap/startbootstrap-stylish-portfolio/archive/gh-pages.zip

         unzip gh-pages.zip -d /var/www/html

         sudo systemctl restart apache2

         echo "Installation successful, kindly check your browser, using your IP now"

    else
          echo "Apache is not installed, this program requires it to work"
          exit 1         
  fi
else

      echo "Only an Admin can run this program"

fi

