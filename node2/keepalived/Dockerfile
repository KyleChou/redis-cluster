FROM keepalived:v1.0.0

COPY run.sh /run.sh
RUN chmod +x /run.sh
COPY keepalived.conf /etc/keepalived/keepalived.conf

ENTRYPOINT [ "/run.sh" ]
