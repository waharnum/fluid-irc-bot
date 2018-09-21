FROM python:3-alpine3.8
RUN python3 -m pip install -r https://raw.githubusercontent.com/ProgVal/Limnoria/master/requirements.txt --upgrade
RUN python3 -m pip install limnoria --upgrade
RUN mkdir /usr/local/runbot
COPY runbot/ /usr/local/runbot/
WORKDIR /usr/local/runbot
ENTRYPOINT echo "" > ./conf/users.conf && supybot-adduser ./conf/users.conf -u ${BOT_OWNER} -p ${BOT_OWNER_PASS} -c OWNER && supybot --allow-root fluid-bot.conf
