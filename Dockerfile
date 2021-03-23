FROM node:14.16.0-buster-slim

RUN apt-get update && apt-get install -y git
RUN npm i -g apollo

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
