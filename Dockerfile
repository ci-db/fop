# build from ubuntu
FROM ubuntu

# set path for the FOP installation
ENV PATH "$PATH:/usr/local/fop-2.5/fop"

# update lists of packages
RUN apt-get update

# install the latest version of OpenJRE
RUN apt-get install -y unzip default-jre

# install wget
RUN apt-get install -y wget

# get the version 2.5 of FOP
RUN wget http://ftp.download-by.net/apache/xmlgraphics/fop/binaries/fop-2.5-bin.tar.gz

RUN wget https://jztkft.dl.sourceforge.net/project/saxon/Saxon-HE/10/Java/SaxonHE10-3J.zip

# unpack FOP into /usr/local
RUN tar -xvzf fop-2.5-bin.tar.gz -C /usr/local


RUN mkdir -p /cidb-lib/java/
RUN unzip SaxonHE10-3J.zip -d  /cidb-lib/java/

ADD scripts/fopsaxon /usr/local/bin/fopsaxon
RUN chmod +x  /usr/local/bin/fopsaxon

# entrypoint 
ENTRYPOINT ["fopsaxon"]

# default command will print the current version of FOP
CMD ["-version"]