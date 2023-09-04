FROM library/alpine:3.18

RUN apk add dbus qt5-qttools qtchooser bash

COPY system.conf /etc/dbus-1/system.conf

VOLUME /var/run/dbus

ENTRYPOINT ["dbus-daemon","--nofork","--system","--print-address"]
