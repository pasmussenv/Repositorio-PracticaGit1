FROM ubuntu:20.04
RUN apt-get update && apt-get install -y bash
COPY mi_script.sh /mi_script.sh
RUN chmod +x /mi_script.sh
CMD ["/mi_script.sh"]
