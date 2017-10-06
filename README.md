Dehydrated FastDNS
==================

This repository contains scripts for building a Docker image suitable for
integrating ACME SSL certificate providers (like Let's Encrypt) with Akamai's
FastDNS service.

The image built from this repository contains dehydrated, dcron, and some python
tools for interacting with FastDNS.

## Runtime Options

The following options are configured as environment variables passed to the
image at runtime:

### Required Variables

 * `AKAMAI_BASE_URL`: From your Akamai credentials, looks like
   `https://xxxx-xxxxxxxxxxxxxxxx-xxxxxxxxxxxxxxxx.luna.akamaiapis.net/`
 * `AKAMAI_CLIENT_TOKEN`: From your Akamai credentials, looks like
   `xxxx-xxxxxxxxxxxxxxxx-xxxxxxxxxxxxxxxx`
 * `AKAMAI_CLIENT_SECRET`: From your Akamai credentials, looks like base64
   encoded data
 * `AKAMAI_ACCESS_TOKEN`: From your Akamai credentials, looks like
   `xxxx-xxxxxxxxxxxxxxxx-xxxxxxxxxxxxxxxx`

 * `DEHYDRATED_CRON_ARGS`: Extra arguments to pass to dehydrated from cron,
   useful for specifying the domains you want certificates for

### Optional Variables

 * `DEHYDRATED_CA`: Same as the `CA` option in dehydrated config
 * `DEHYDRATED_CA_TERMS`: Same as the `DEHYDRATED_CA_TERMS` option in dehydrated
   config
