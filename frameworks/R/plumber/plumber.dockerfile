FROM rstudio/plumber

RUN apt-get update

RUN apt install postgresql postgresql-contrib -y

RUN R -e "install.packages(c('DBI', 'RPostgres'))"

ADD ./ /plumber

WORKDIR /plumber

EXPOSE 8080

CMD ["deploy_plumber.R"]
