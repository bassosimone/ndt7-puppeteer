FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y ca-certificates fonts-liberation gconf-service libappindicator1 libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release nodejs npm wget xdg-utils
COPY index.js /root
COPY package.json /root
WORKDIR /root
RUN npm install
ENTRYPOINT ["node", "index.js"]
CMD ["https://bassosimone.github.io/ndt7"]
