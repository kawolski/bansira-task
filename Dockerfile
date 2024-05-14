# Use a base image with the latest Node.js LTS installed
FROM node:13-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY . .

# Install dependencies
RUN npm install

# Start the app
CMD ["node", "index.js"]