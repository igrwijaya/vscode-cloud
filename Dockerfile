FROM codercom/code-server

RUN sudo apt-get update
RUN sudo apt-get install -y wget

RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
RUN sudo bash nodesource_setup.sh
RUN sudo apt install nodejs

RUN node -v
RUN sudo corepack enable

RUN sudo wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN sudo dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb

RUN sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0

ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:80", "."]
