FROM python:3.7-stretch


RUN apt-get install git wget 
RUN git clone https://github.com/stark0de/nginxpwner.git
WORKDIR /nginxpwner

# installing gobuster 
# RUN wget http://ftp.br.debian.org/debian/pool/main/g/gobuster/gobuster_2.0.1-1_amd64.deb &&\
#          dpkg -i gobuster_2.0.1-1_amd64.deb && rm gobuster_2.0.1-1_amd64.deb
RUN apt-get install gobuster
# kyubi install
RUN git clone https://github.com/shibli2700/Kyubi.git &&\
     cd Kyubi && python3 setup.py install && cd ..


# nginxpwner python dependencies install
RUN pip3 install -r requirements.txt

