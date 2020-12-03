# About

a Docker image for running [Apache™ FOP](https://xmlgraphics.apache.org/fop/). with saxon Suport 

# How To USE

## Windows

    docker run -v "%CD%:/src" -w /src  -it --rm fop   -xsl examples/fo/fo-reference/xml2pdf.xsl -xml examples/fo/fo-reference/xslfoRef.xml -pdf test/test1.pdf

## UNIX

    docker run --user $(id -u):$(id -g) -v $(pwd):/src -w /src   -xsl examples/fo/fo-reference/xml2pdf.xsl -xml examples/fo/fo-reference/xslfoRef.xml -pdf test/test1.pdf



# Docker build
    docker build -t  fop .  

    docker tag  fop  cidb/fop:v0.1.0

    docker tag  fop  cidb/fop

    docker push  cidb/fop


