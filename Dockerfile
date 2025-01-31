# Defina qual distro do linux vc quer usar
FROM debian:latest
ENV DEBIAN_FRONTEND noninteractive
# Instale as dependencias do SISTEMA OPERACIONAL
# Exemplo de como seria no ubuntu: RUN apt update && apt install -y python3 python3-pip libpq-dev

WORKDIR /app
COPY . /app

RUN apt update && apt install -y python3 python3-pip libpq-dev wget gnupg2 lsb-release

# Sua imagem deve ter o python 3.8+ instalado e o pip
RUN pip install -r requirements.txt

