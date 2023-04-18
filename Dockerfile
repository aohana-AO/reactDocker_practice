#コンテナ内でgit使いたいためubuntu使用
FROM arm64v8/ubuntu:22.04
WORKDIR /root/
RUN apt -y update \
&& apt -y upgrade \
#gitのinstall
&& apt install git -y \
#node+npmのinstall
&& apt install nodejs -y \
&& apt install npm -y

#iconsのinstall
#RUN npm install react-icons --save
#mantineのinstall
RUN npm install @mantine/core @mantine/hooks @emotion/react


#ubuntuだと重い、軽くしたい場合はnodeをbaseimageにしとく？
#FROM node:18.12.1-alpine
#WORKDIR /usr/src/app
#iconsのinstall
#RUN npm install react-icons --save
#mantineのinstall
#RUN npm install @mantine/core @mantine/hooks @emotion/react