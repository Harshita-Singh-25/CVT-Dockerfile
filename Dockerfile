# Use the official lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Remove the default Nginx web content
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom index.html into the Nginx web content directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 so the container can serve web traffic
EXPOSE 80
