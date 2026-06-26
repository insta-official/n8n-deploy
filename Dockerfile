FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n
COPY data/.n8n/database.sqlite /home/node/.n8n/database.sqlite
RUN chown node:node /home/node/.n8n/database.sqlite && chmod 644 /home/node/.n8n/database.sqlite
USER node

EXPOSE 5678
