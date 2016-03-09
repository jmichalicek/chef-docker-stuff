FROM debian
MAINTAINER jmichaliceK
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get install -y python3-virtualenv
RUN apt-get install -y virtualenvwrapper
RUN mkvirtualenv woo
RUN workon woo
RUN pip install django
