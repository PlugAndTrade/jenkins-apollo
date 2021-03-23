FROM node:14.16.0-buster-slim

RUN npm i -g apollo

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
