FROM mysql:8.0

# Copy the database setup script and mysql client tools
COPY scripts/database_setup.sql /scripts/

# Install mysql-client
RUN apt-get update && apt-get install -y mysql-client

# Create entrypoint script
RUN echo '#!/bin/bash\n\
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" < /scripts/database_setup.sql\n\
exec "$@"' > /entrypoint.sh \
    && chmod +x /entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]