#! /bin/sh

# curl -I "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=${GEO_IP_LICENSE_KEY}&suffix=tar.gz"
wget -c "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=${GEO_IP_LICENSE_KEY}&suffix=tar.gz" -O GeoLite2-City.tar.gz
tar -xvzf GeoLite2-City.tar.gz

# find update directory
GEO_DIR=$(find . -type d -name "GeoLite2-City_*")
cd $GEO_DIR
yes | cp GeoLite2-City.mmdb ../db
cd ..

rm -rf $GEO_DIR
rm GeoLite2-City.tar.gz
