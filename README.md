# DNS Tester

[![Docker Repository on Quay](https://quay.io/repository/giantswarm/dns-tester/status "Docker Repository on Quay")](https://quay.io/repository/giantswarm/dns-tester)

[![CircleCI](https://circleci.com/gh/giantswarm/dns-tester/tree/master.svg?style=svg)](https://circleci.com/gh/giantswarm/dns-tester/tree/master)

This app deploys a daemonset whose pods tries to resolve a bunch of local and remote names using coredns every second, and crash if they fail. 
Useful to get a high level overview of dns status across nodes.
