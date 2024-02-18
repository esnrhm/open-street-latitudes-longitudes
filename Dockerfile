FROM overv/openstreetmap-tile-server:2.3.0
RUN wget http://download.geofabrik.de/asia/iran-latest.osm.pbf -O /data/region.osm.pbf
RUN /run.sh import
COPY leaflet.js /var/www/html/leaflet.js
COPY index.html /var/www/html/index.html
