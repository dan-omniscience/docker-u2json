FROM jfloff/alpine-python

RUN easy_install idstools

ENTRYPOINT  [ "idstools-u2json", "--snort-conf", "/etc/snort/snort.conf", "--directory", "/var/log/snort", "--prefix", "snort.u2", "--follow", "--bookmark", "/var/log/snort/u2json.bookmark", "--delete", "--output", "/var/log/snort/alerts.json" ]
