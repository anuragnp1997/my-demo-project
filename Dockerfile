# Use the official Nginx image based on Alpine
FROM nginx:alpine

# Copy the web application files into the Nginx web directory
COPY . /usr/share/nginx/html

# Expose the port Nginx is listening on
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
