# LangStream Helm Charts Repositorya

Charts:
- [LangStream](./charts/langstream/)



{{ template "chart.versionBadge" . }}{{ template "chart.typeBadge" . }}{{ template "chart.appVersionBadge" . }}

{{ template "chart.requirementsSection" . }}

{{ template "chart.valuesSection" . }}

{{ template "helm-docs.versionFooter" . }}


## Import grafana dashboard

Set the values `grafanaDashboards.enabled: true` and `grafanaDashboards.namespaceOverride: <grafana-namespace>`.


Add a new dashboard provider to the Grafana configuration

```
grafana:
    dashboardProviders:
        dashboardproviders.yaml:
            apiVersion: 1
            providers:
            - name: langstream
              orgId: 1
              folder: ''
              type: file
              disableDeletion: false
              editable: true
              options:
                path: /var/lib/grafana/dashboards/langstream
    dashboardsConfigMaps:
        langstream: "grafana-dashboard-langstream"
```

