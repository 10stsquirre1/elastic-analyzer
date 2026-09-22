# Pull from the Bitnami Legacy repository
FROM bitnamilegacy/elasticsearch:9.1.2-debian-12-r0

# Switch to root to perform plugin installation
USER root

# Install the matching ICU analysis plugin using Bitnami's file path
RUN /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install --batch analysis-icu

# Switch back to the non-root Bitnami user (1001)
USER 1001