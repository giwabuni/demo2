# Use the official Keycloak image as the base
FROM quay.io/keycloak/keycloak:23.0.6

# Switch to root user
USER root

# Set environment variables for Keycloak admin credentials
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD={admin_password}

# Expose the default Keycloak port
EXPOSE 8080

# Set the default command to start Keycloak in development mode
CMD ["start-dev"]

# Optional: Create the data directory if you want to ensure it exists in the image
RUN mkdir -p /opt/jboss/keycloak/standalone/data
VOLUME /opt/jboss/keycloak/standalone/data
