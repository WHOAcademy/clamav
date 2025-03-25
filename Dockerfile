# https://github.com/bcgov/clamav/blob/master/Dockerfile

FROM whoalxp.azurecr.io/docker-clamav:openshit-base

COPY config/clamd.conf /etc/clamd.conf
COPY config/freshclam.conf /etc/freshclam.conf

RUN chown -R 1001:0 /opt/app-root/src
RUN chmod -R ug+rwx /opt/app-root/src
RUN chown -R 1001:0 /opt/app-root/src

USER 1001

EXPOSE 3310

CMD freshclam && clamd -c /etc/clamd.conf