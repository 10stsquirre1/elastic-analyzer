
# Use the official Bitnami 8.5.1 image as the starting base
FROM docker.io/bitnami/elasticsearch:8.5.1

# Temporarily switch to root to install packages if needed (or run system updates)
USER root
RUN install_packages ca-certificates curl

# Switch back to the standard non-root Bitnami user (UID 1001) for security compliance
USER 1001

# Install the analysis-icu plugin directly into the image filesystem
RUN /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install --batch analysis-icu
