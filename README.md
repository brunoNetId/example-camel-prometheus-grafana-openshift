## Description

This example showcases an [*Apache Camel*](http://camel.apache.org/) application built with [*Fuse Integration Services* (*FIS*)](https://www.openshift.com/container-platform/middleware-services.html#integration), from [*Red Hat*](https://www.redhat.com). The application includes the [`camel-metrics`](http://camel.apache.org/metrics-component.html) component to collect custom indicators for monitoring.

[*Prometheus*](https://prometheus.io/) uses [*Kubernetes*](https://kubernetes.io/)'s API to discover the [*Camel*](http://camel.apache.org/) pods when deployed, and starts scraping data. [*Grafana*](https://grafana.com/) can then be used to display all the collected metrics on screen.

Read the full step-by-step article following the link at:
[https://brunonetid.github.io/](https://brunonetid.github.io/)
