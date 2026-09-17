# Use the correct, existing Bitnami 8.5.1 tag
FROM docker.io/bitnami/elasticsearch:8.5.1

# Temporarily switch to root to install packages
USER root

# Run apt-get update and install ca-certificates and curl securely, cleaning up caches afterward
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl && \
    rm -rf /var/lib/apt/lists/*

# Switch back to the standard non-root Bitnami user (UID 1001) for security compliance
USER 1001

# Install the analysis-icu plugin directly into the image filesystem
RUN /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install --batch analysis-icu
