#Dockerfile, Image , Container

FROM python:3.10

# install google chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get -y update
RUN apt-get install -y google-chrome-stable

# install chromedriver
RUN apt-get install -yqq unzip
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/

RUN chmod 777 /usr/local/bin/chromedriver


RUN python3 -m pip install --upgrade pip
COPY requirement.txt /tmp/requirement.txt
#ADD_thiscommandhas the same role as COPY but it acceptice http and URL
RUN  pip3 install -r /tmp/requirement.txt

ENTRYPOINT robot -d Test-output Automation/TestSuits/Login/invalid_login.robot