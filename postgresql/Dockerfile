FROM postgres:latest

# Set environment variables
ENV POSTGRES_USER ${POSTGRES_USER}
ENV POSTGRES_PASSWORD ${POSTGRES_PASSWORD}

# Copy script into image
COPY init.sql /docker-entrypoint-initdb.d/

# Expose port 5432 to the outside world
EXPOSE 5432
