# Dockerfile als demo voor het USER commando
FROM ubuntu
# als user root
# eerste samengesteld RUN commando -> wordt een image layer
# maak de group student aan
RUN groupadd -r student \
  \
  # maak de user student aan met als primary group student en geen login
  && useradd -r -m -g student -s /bin/bash -c "student" student \
  \
  # verander het paswoord van student naar pxl
  && echo student:pxl | chpasswd

# 2de RUN commando -> wordt een image layer
# installeer het software packages sudo en tree
RUN apt-get update \
  && apt-get install -y tree sudo

CMD ["bash"]