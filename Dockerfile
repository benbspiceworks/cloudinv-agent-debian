FROM debian
ARG DOWNLOAD_URL
ARG SITE_KEY

RUN apt-get -qq update; \
apt-get install -y mono-complete curl dialog apt-utils tzdata

RUN curl -k -o /tmp/agent.deb $DOWNLOAD_URL

RUN SITE_KEY=$SITE_KEY TROUBLESHOOTING_HOST="https://api-staging.spiceworks.com/agent-registrar" apt install /tmp/agent.deb

RUN rm /tmp/agent.deb

ENTRYPOINT service agent_shell_service stop && service agent_shell_service start && bash