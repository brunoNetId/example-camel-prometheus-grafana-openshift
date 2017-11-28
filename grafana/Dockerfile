FROM centos:7
MAINTAINER Erik Jacobs <erikmjacobs@gmail.com>

USER root
EXPOSE 3000

# VERSION UPDATE
#ENV GRAFANA_VERSION="4.3.1"
ENV GRAFANA_VERSION="4.4.1"

ADD root /
RUN yum -y install https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-"$GRAFANA_VERSION"-1.x86_64.rpm \
    && yum clean all
COPY run.sh /usr/share/grafana/
RUN /usr/bin/fix-permissions /usr/share/grafana \
    && /usr/bin/fix-permissions /etc/grafana \
    && /usr/bin/fix-permissions /var/lib/grafana \
    && /usr/bin/fix-permissions /var/log/grafana 

# PIE CHART PLUGIN
COPY grafana-piechart-panel /var/lib/grafana/plugins/grafana-piechart-panel
COPY grafana-piechart-panel /usr/share/grafana/plugins/grafana-piechart-panel

WORKDIR /usr/share/grafana
ENTRYPOINT ["./run.sh"]
