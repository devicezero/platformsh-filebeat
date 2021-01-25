#!/usr/bin/env bash

TEMP_SPLUNK_HOME=config/splunk/build

# Install Splunk Universal Forwarder
#!/usr/bin/env bash

TEMP_BEAT_HOME=config/filebeat/build

[ ! -d $TEMP_BEAT_HOME ] && mkdir -p $TEMP_BEAT_HOME
cd $TEMP_BEAT_HOME

ls -la config/filebeat

# Install Filebeat
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.2-linux-x86_64.tar.gz
tar xzvf filebeat-7.10.2-linux-x86_64.tar.gz
rm filebeat-7.10.2-linux-x86_64.tar.gz

# Download the certificate
wget https://raw.githubusercontent.com/logzio/public-certificates/master/AAACertificateServices.crt

mkdir -p filebeat-7.10.2-linux-x86_64/pki/tls/certs
cp AAACertificateServices.crt  filebeat-7.10.2-linux-x86_64/pki/tls/certs/
