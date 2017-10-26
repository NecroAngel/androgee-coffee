#TODO SED envvars
FROM node:8.6.0
ENV MINECRAFT_IP=''
ENV MINECRAFT_PORT=''
ENV MINECRAFT_PASSWORD=''

ENV MODDED_MINECRAFT_IP=''
ENV MODDED_MINECRAFT_PORT=''
ENV MODDED_MINECRAFT_PASSWORD=''

ENV RUST_IP=''
ENV RUST_PORT=''
ENV RUST_PASSWORD=''

ENV GMOD_IP=''
ENV GMOD_PORT=''
ENV GMOD_PASSWORD=''

RUN adduser androgee
ADD . /home/androgee
RUN chown -R androgee /home/androgee

USER androgee
WORKDIR /home/androgee
RUN npm install -g coffeescript
RUN npm install

CMD ["coffee", "main.coffee"]
