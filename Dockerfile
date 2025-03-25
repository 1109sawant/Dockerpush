# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Nginx
RUN apt update && apt install -y nginx && rm -rf /var/lib/apt/lists/*

# Copy the HTML file to the Nginx web directory
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
