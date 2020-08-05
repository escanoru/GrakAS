FROM grafana/grafana
COPY Arcsight_dashboards.yaml /etc/grafana/provisioning/dashboards/
COPY general_dashboards.yaml /etc/grafana/provisioning/dashboards/
COPY arcsight_blueprints/* /etc/grafana/arcsight_blueprints/
COPY general/* /etc/grafana/general/
COPY grafana.ini /etc/grafana/
CMD mkdir /var/lib/grafana/plugins/vertica-grafana-datasource/
COPY vertica-grafana-datasource/dist/ /var/lib/grafana/plugins/vertica-grafana-datasource/