FROM ubuntu as download

WORKDIR /server

RUN apt-get update \
  && apt-get install -y curl

RUN export URL=$(curl https://minecraft.net/en-us/download/server -L | grep .jar | grep https | cut -d "\"" -f 2) \
  && export FILE=$(echo $URL | rev | cut -d "/" -f 1 | rev) \
  && curl $URL -sL -o $FILE

FROM ubuntu

RUN apt-get update \
  && apt-get install -y openjdk-8-jdk

COPY --from=download /server/* /server/

WORKDIR /world

CMD java -Xmx1024M -Xms1024M -jar /server/*.jar nogui
