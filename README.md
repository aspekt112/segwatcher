# SEGwatcher

Implementation of Core Dumps detection pipeline in [Kubernetes](http://kubernetes.io).

The goal is achieved in the following steps:
1. Provision your nodes with Daemon Set configured with Helm chart.
2. Daemon Set run privileged pod on each node of the cluster and rewrites `/proc/sys/kernel/core_pattern` with path and pattern, provided via chart values.
3. Watchers endlessly waiting `close_write` event at certain directory (which should contain only core dumps).
4. Move core dump to preconfigured S3 bucket.
5. Send alert to Telegram channel with details and command for download.
