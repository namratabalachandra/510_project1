FROM scratch
ADD ubuntu-base-20.04.1-base-arm64.tar.gz /
WORKDIR /Users/namra_436gro7/Desktop/510_project1
COPY package.json /Users/namra_436gro7/Desktop/510_project1
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN npm install express
RUN npm install express-handlebars
RUN npm install ejs
RUN npm install body-parser
COPY . /Users/namra_436gro7/Desktop/510_project1
EXPOSE 3000
CMD ["npm","start"]


