FROM Ubuntu:latest 
#we have choosen the paltform as ubuntu latest
RUN apt-get update 
# to update the systesm 
RUN apt-get install apache2 -y
#to run the apche2 in the ubuntu
ADD ./var/www/html
# adding the folder where it extactly run 
EXPOSE 9090
# we have given the port of 9090 so when we use this port we should able to get apache website
ENTRYPOINT apachectl -D FORGOUND
# we are running application in the backround 
