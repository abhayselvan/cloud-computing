FROM csminpp/ubuntu-sysbench

COPY dockerbootstrap.sh /dockerbootstrap.sh
COPY cputests.sh /cputests.sh
COPY fileiotests.sh /fileiotests.sh

RUN chmod +x dockerbootstrap.sh
RUN chmod +x cputests.sh
RUN chmod +x fileiotests.sh

ENTRYPOINT bash dockerbootstrap.sh

