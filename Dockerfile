# Use the Nexus image as the base image
FROM sonatype/nexus3:3.42.0

# Expose the port Nexus uses
EXPOSE 8081

# Set volume for Nexus data persistence
VOLUME /nexus-data

# Set Nexus to run on startup
CMD ["sh", "-c", "exec /opt/sonatype/nexus/bin/nexus run"]

# Optionally, copy any additional configurations or scripts
# COPY ./your-custom-config /path/to/nexus-config
