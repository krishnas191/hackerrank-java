FROM maven AS buildstage
RUN mkdir /opt/krishnas191
WORKDIR /opt/krishnas191
COPY . .
RUN mvn clean install
