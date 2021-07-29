#! /bin/sh

echo "###############################"
echo "Updating GeoLite2-City database"
echo "###############################"
echo ""

# curl -I "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=${GEO_IP_LICENSE_KEY}&suffix=tar.gz"
wget -c "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=${GEO_IP_LICENSE_KEY}&suffix=tar.gz" -O GeoLite2-City.tar.gz
tar -xvzf GeoLite2-City.tar.gz

# find update directory
GEO_CITY_DIR=$(find . -type d -name "GeoLite2-City_*")
cd $GEO_CITY_DIR
yes | cp GeoLite2-City.mmdb ../db
cd ..

rm -rf $GEO_CITY_DIR
rm GeoLite2-City.tar.gz

echo "##############################"
echo "Updating GeoLite2-ASN database"
echo "##############################"
echo ""

wget -c "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-ASN&license_key=${GEO_IP_LICENSE_KEY}&suffix=tar.gz" -O GeoLite2-ASN.tar.gz
tar -xvzf GeoLite2-ASN.tar.gz

# find update directory
GEO_ASN_DIR=$(find . -type d -name "GeoLite2-ASN_*")
cd $GEO_ASN_DIR
yes | cp GeoLite2-ASN.mmdb ../db
cd ..

rm -rf $GEO_ASN_DIR
rm GeoLite2-ASN.tar.gz
