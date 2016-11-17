FROM ches/kafka:0.10.1.0

USER root
RUN apt-get update
RUN apt-get install -y curl
ADD start-kafka.sh /start-kafka.sh
RUN chmod +x /start-kafka.sh
USER kafka

CMD ["/start-kafka.sh"]
