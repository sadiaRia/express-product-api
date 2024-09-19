# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 for the app
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
