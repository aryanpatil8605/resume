# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /index.html
WORKDIR /arp.css
# Copy the necessary files from your local directory to the container
COPY index.html .
COPY arp.css .

# Expose port 8000 for the application
EXPOSE 8000

# Install any dependencies your application may have (if needed)
# Example: RUN npm install

# Command to start your application
CMD [ "npx", "http-server", "-p", "8000" ]
