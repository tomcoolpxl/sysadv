# Dockerfile als demo voor het USER commando
FROM fedora
# als user root
# eerste samengesteld RUN commando -> wordt een image layer
# maak de group noprivileges aan
RUN groupadd -r noprivileges \
    \
# maak de user normaluser aan met als primary group noprivileges en geen login
    && useradd -r -m -g noprivileges -s /sbin/nologin -c "Demo user" normaluser \
    \
# verander het paswoord van normaluser naar pxl
    && echo normaluser:pxl | chpasswd \
    \
# voeg normaluser toe aan de fedora group wheel
    && usermod -aG wheel normaluser
# 2de RUN commando -> wordt een image layer
# installeer het software package iputils, dat het ping commando bevat
RUN dnf install -y tree iputils
# 3de RUN commando -> wordt een image layer
# verander de rechten van het ping commando zodat unprivileged (non-root) users dat ook kunnen uitvoeren
RUN chmod 4755 /bin/ping
# als user normaluser
USER normaluser
# stel de WORKDIR in, vanaf nu worden alle commando's uitgevoerd in deze directory
WORKDIR /home/normaluser
# maak een lege file aan als normaluser
RUN touch Welocme.txt
# run het ping commando als normaluser
CMD ping -c10 8.8.8.8