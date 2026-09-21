# Use the official Elasticsearch 9.5.3 image as the base
FROM docker.elastic.co/elasticsearch/elasticsearch:9.5.3

# Install the matching 9.5.3 ICU analysis plugin
# The --batch flag automatically accepts default security permissions
RUN bin/elasticsearch-plugin install --batch analysis-icu