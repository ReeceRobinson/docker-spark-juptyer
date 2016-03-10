FROM reecerobinson/spark-base:1.6.1
MAINTAINER docker@reecerobinson.co.nz

EXPOSE 4040 10000

# update boot script
COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh

ENTRYPOINT ["/etc/bootstrap.sh"]
