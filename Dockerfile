# Use an official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code to the container
COPY . .

# Build the Docusaurus site
RUN npm run build

# Expose the port that the Docusaurus site runs on
EXPOSE 3050

# Start the Docusaurus server
CMD ["npm", "run", "serve"]
