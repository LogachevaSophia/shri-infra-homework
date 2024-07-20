FROM ubuntu
COPY . /build
RUN apt update
RUN apt install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt install -y nodejs


WORKDIR /build
RUN npm i
RUN npm run build
CMD npm start
