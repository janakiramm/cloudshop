sudo apt-get -y install python-software-properties php5-dev
sudo curl -L http://cpanmin.us | perl - --self-upgrade
cpanm Digest::HMAC_SHA1
cpanm HTTP::Date
cpanm Config::Properties
