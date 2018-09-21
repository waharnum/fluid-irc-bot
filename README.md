# fluid-bot

This is a basic IRC logging and log access system consisting of two Docker containers:

- a [Limnoria](https://github.com/ProgVal/Limnoria)-based channel bot with the ChannelLogger plugin
- an nginx container that mounts the bot's logging directory

These are managed by a `docker-compose` definition that includes a volume container to store the logging directory between container restarts.

Wherever the `docker-compose` command is launched from should contain an `.env` file with owner user/PW for the bot - see `.env.sample` for the structure.
