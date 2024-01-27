# Use the Debian base image
FROM debian:bullseye-slim

# Install nginx
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

# Copy the nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]
