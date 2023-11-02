# LangStream Helm Charts Repository

Charts:
- [LangStream](./charts/langstream/)

![Version: 0.4.1](https://img.shields.io/badge/Version-0.4.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.4.1](https://img.shields.io/badge/AppVersion-0.4.1-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apiGateway.affinity | object | `{}` | Affinity settings |
| apiGateway.app.config | object | `{}` | Application configuration. It must be in Spring application.properties format. e.g.: logging.level.ai.langstream.webservice: debug |
| apiGateway.fullnameOverride | string | `""` | Fullname override for the component. By default it's used the chart name |
| apiGateway.image.pullPolicy | string | `"IfNotPresent"` | Pull policy for the image |
| apiGateway.image.repository | string | `"ghcr.io/langstream/langstream-api-gateway"` | Repository for the image |
| apiGateway.image.tag | string | `""` | Tag for the image. If set it overrides images.tag |
| apiGateway.imagePullSecrets | list | `[]` | Image pull secrets |
| apiGateway.liveness | object | `{"initialDelaySeconds":10,"periodSeconds":30,"timeoutSeconds":5}` | Liveness probe settings |
| apiGateway.nameOverride | string | `""` | Name override for the component. By default it's used the chart name |
| apiGateway.nodeSelector | object | `{}` | Node selector settings |
| apiGateway.podAnnotations | object | `{}` | Pod annotations |
| apiGateway.podSecurityContext | object | `{}` | Pod security context |
| apiGateway.readiness | object | `{"initialDelaySeconds":5,"periodSeconds":5,"timeoutSeconds":5}` | Readiness probe settings |
| apiGateway.replicaCount | int | `1` | Number of replicas |
| apiGateway.resources | object | `{"requests":{"cpu":0.25,"memory":"256Mi"}}` | Resources for the pod |
| apiGateway.securityContext | object | `{}` | Security context |
| apiGateway.service.port | int | `8091` | Port for the service. If changes, the control plane config must be updated accordingly |
| apiGateway.service.type | string | `"ClusterIP"` | Type of service. Set "LoadBalancer" to enable external access |
| apiGateway.serviceAccount.annotations | object | `{}` | Annotations for the service account |
| apiGateway.serviceAccount.create | bool | `true` | Whether to create a service account or not |
| apiGateway.serviceAccount.name | string | `""` | Name for the service account. If not set it's used the chart name. |
| apiGateway.serviceAccount.role.name | string | `"langstream-api-gateway"` | Role name. This is a namespaced-role. |
| apiGateway.serviceAccount.roleBinding.name | string | `"langstream-api-gateway-role-binding"` | Role binding name. This is a namespaced-role-binding. |
| apiGateway.tolerations | list | `[]` | Toleration settings |
| client.affinity | object | `{}` | Affinity settings |
| client.app | object | `{"config":{}}` | Section related to the application |
| client.fullnameOverride | string | `""` | Fullname override for the component. By default it's used the chart name |
| client.image.pullPolicy | string | `"IfNotPresent"` | Pull policy for the image |
| client.image.repository | string | `"ghcr.io/langstream/langstream-cli"` | Repository for the image |
| client.image.tag | string | `""` | Tag for the image. If set it overrides images.tag |
| client.imagePullSecrets | list | `[]` | Image pull secrets |
| client.nameOverride | string | `""` | Name override for the component. By default it's used the chart name |
| client.nodeSelector | object | `{}` | Node selector settings |
| client.podAnnotations | object | `{}` | Service account settings |
| client.podSecurityContext | object | `{}` | Pod security context |
| client.replicaCount | int | `1` | Number of replicas |
| client.resources | object | `{"requests":{"cpu":0.25,"memory":"256Mi"}}` | Resources for the pod |
| client.securityContext | object | `{}` | Security context |
| client.tolerations | list | `[]` | Toleration settings |
| codeStorage.configuration | object | `{}` | Configuration for the storage type. |
| codeStorage.type | string | `"none"` | Storage type implementation for code storage. "s3" or "azure-blob-storage" supported. |
| controlPlane.affinity | object | `{}` | Affinity settings |
| controlPlane.app | object | `{"config":{}}` | Section related to the application |
| controlPlane.app.config | object | `{}` | Application configuration. It must be in Spring application.properties format. e.g.: logging.level.ai.langstream.webservice: debug |
| controlPlane.fullnameOverride | string | `""` | Fullname override for the component. By default it's used the chart name |
| controlPlane.image.pullPolicy | string | `"IfNotPresent"` | Pull policy for the image |
| controlPlane.image.repository | string | `"ghcr.io/langstream/langstream-control-plane"` | Repository for the image |
| controlPlane.image.tag | string | `""` | Tag for the image. If set it overrides images.tag |
| controlPlane.imagePullSecrets | list | `[]` | Image pull secrets |
| controlPlane.liveness | object | `{"initialDelaySeconds":20,"periodSeconds":30,"timeoutSeconds":5}` | Liveness probe settings |
| controlPlane.nameOverride | string | `""` | Name override for the component. By default it's used the chart name |
| controlPlane.nodeSelector | object | `{}` | Node selector |
| controlPlane.podAnnotations | object | `{}` | Pod annotations |
| controlPlane.podSecurityContext | object | `{}` | Pod security context |
| controlPlane.readiness | object | `{"initialDelaySeconds":10,"periodSeconds":5,"timeoutSeconds":5}` | Readiness probe settings |
| controlPlane.replicaCount | int | `1` | Number of replicas |
| controlPlane.resources | object | `{"requests":{"cpu":0.25,"memory":"256Mi"}}` | Resources for the pod |
| controlPlane.securityContext | object | `{}` |  |
| controlPlane.service.port | int | `8090` | Port for the service. If changes, the control plane config must be updated accordingly |
| controlPlane.service.type | string | `"ClusterIP"` |  |
| controlPlane.serviceAccount.annotations | object | `{}` | Annotations for the service account |
| controlPlane.serviceAccount.create | bool | `true` | Whether to create a service account or not |
| controlPlane.serviceAccount.name | string | `""` | Name for the service account. If not set it's used the chart name. |
| controlPlane.serviceAccount.role.name | string | `"langstream-control-plane"` | Name for the role. This is a namespaced-role. |
| controlPlane.serviceAccount.roleBinding.name | string | `"langstream-control-plane-role-binding"` | Name for the role binding. This is a namespaced-role. |
| controlPlane.tolerations | list | `[]` | Toleration settings |
| deployer.affinity | object | `{}` | Affinity settings |
| deployer.app.config.agentPodTemplate | object | `{"annotations":{},"nodeSelector":{},"tolerations":[]}` | Pod template for the agents. It gets merged with podTemplate |
| deployer.app.config.agentResources.cpuPerUnit | float | `0.5` | CPU allocated for a single unut |
| deployer.app.config.agentResources.defaultCpuMemUnits | int | `1` | Default mem/cpu when not specified for a unit |
| deployer.app.config.agentResources.defaultInstanceUnits | int | `1` | Default instance count when not specified for a unit |
| deployer.app.config.agentResources.defaultMaxTotalResourceUnitsPerTenant | int | `0` | Max allocatable units for a single tenant |
| deployer.app.config.agentResources.defaultStorageClass | string | `"default"` | Default storage class to use for the stateful agents |
| deployer.app.config.agentResources.defaultStorageDiskSize | string | `"128MB"` | Default storage size to use for the stateful agents |
| deployer.app.config.agentResources.enableLivenessProbe | bool | `true` |  |
| deployer.app.config.agentResources.enableReadinessProbe | bool | `true` |  |
| deployer.app.config.agentResources.instancePerUnit | int | `1` | How many instance are created per single unit. An instance is a pod. |
| deployer.app.config.agentResources.livenessProbeInitialDelaySeconds | int | `10` |  |
| deployer.app.config.agentResources.livenessProbePeriodSeconds | int | `30` |  |
| deployer.app.config.agentResources.livenessProbeTimeoutSeconds | int | `5` |  |
| deployer.app.config.agentResources.maxCpuMemUnits | int | `8` | Max allocatable cpu/mem units for a single agent |
| deployer.app.config.agentResources.maxInstanceUnits | int | `8` | Max allocatable instances for a single agent |
| deployer.app.config.agentResources.memPerUnit | int | `512` | Memory allocated for a single unit |
| deployer.app.config.agentResources.readinessProbeInitialDelaySeconds | int | `10` |  |
| deployer.app.config.agentResources.readinessProbePeriodSeconds | int | `30` |  |
| deployer.app.config.agentResources.readinessProbeTimeoutSeconds | int | `5` |  |
| deployer.app.config.agentResources.storageClassesMapping | object | `{}` | Storage class mapping between the disk 'type' and the Kubernetes storage class |
| deployer.app.config.appDeployerPodTemplate | object | `{"annotations":{},"nodeSelector":{},"tolerations":[]}` | Pod template for the job that deploys the application. It gets merged with podTemplate |
| deployer.app.config.clusterRuntime.kubernetes | object | `{}` | Configuration for the "kubernetes" cluster runtime |
| deployer.app.config.codeStorage | object | `{"endpoint":"","type":"none"}` | DEPRECATED |
| deployer.app.config.podTemplate | object | `{"annotations":{},"nodeSelector":{},"tolerations":[]}` | Pod template for the job that deploys the application and the agents |
| deployer.fullnameOverride | string | `""` | Fullname override for the component. By default it's used the chart name |
| deployer.image.pullPolicy | string | `"IfNotPresent"` | Pull policy for the image |
| deployer.image.repository | string | `"ghcr.io/langstream/langstream-deployer"` | Repository for the image |
| deployer.image.tag | string | `""` | Tag for the image. If set it overrides images.tag |
| deployer.imagePullSecrets | list | `[]` | Image pull secrets |
| deployer.liveness | object | `{"initialDelaySeconds":10,"periodSeconds":30,"timeoutSeconds":5}` | Liveness probe settings |
| deployer.nameOverride | string | `""` | Name override for the component. By default it's used the chart name |
| deployer.nodeSelector | object | `{}` | Node selector settings |
| deployer.podAnnotations | object | `{}` | Pod annotations |
| deployer.podSecurityContext | object | `{}` | Pod security context |
| deployer.readiness | object | `{"initialDelaySeconds":5,"periodSeconds":5,"timeoutSeconds":5}` | Readiness probe settings |
| deployer.replicaCount | int | `1` | Number of replicas |
| deployer.resources | object | `{"requests":{"cpu":0.25,"memory":"256Mi"}}` | Pod resources settings |
| deployer.securityContext | object | `{}` | Security context |
| deployer.serviceAccount.annotations | object | `{}` | Annotations for the service account |
| deployer.serviceAccount.create | bool | `true` | Whether to create a service account or not |
| deployer.serviceAccount.name | string | `""` | Name for the service account. If not set it's used the chart name. |
| deployer.serviceAccount.role.name | string | `"langstream-deployer"` | Role name. This is a namespaced-role. |
| deployer.serviceAccount.roleBinding.name | string | `"langstream-deployer-role-binding"` | Role binding name. This is a namespaced-role-binding. |
| deployer.tolerations | list | `[]` | Toleration settings |
| globalStorage.configuration | object | `{}` | Configuration for the storage type. |
| globalStorage.type | string | `"kubernetes"` | Storage type implementation for global storage. (tenants metadata) |
| grafanaDashboards.enabled | bool | `false` | Wheter to create the grafana dashboards or not. They're created as configmap and loaded by the grafana deployment (if present) |
| grafanaDashboards.namespaceOverride | string | `""` | Namespace of the grafana deployment, if different from the LangStream's one |
| images.tag | string | `""` | Tag for all the images |
| runtime.image | string | `"ghcr.io/langstream/langstream-runtime"` | Image to use for the runtime |
| runtime.imagePullPolicy | string | `"IfNotPresent"` | Pull policy for the runtime image |
| runtime.imageTag | string | `""` | Tag for the runtime image. If set it overrides images.tag. |
| tenants.defaultTenant.create | bool | `true` | Wheter to create the default tenant or not |
| tenants.defaultTenant.name | string | `"default"` | Name for the default tenant |
| tenants.namespacePrefix | string | `"langstream-"` | Tenant's namespace prefix. Each tenant will have a namespace with this prefix and the tenant name as suffix. e.g.: langstream-default |
| tenants.storageType | string | `"kubernetes"` | Storage type implementation for tenants. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)

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

