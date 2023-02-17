# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies defined in package.json
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Set the environment variables, if any
ENV PORT=3000

# Expose the port that the application will listen on
EXPOSE $PORT

# Start the application
CMD [ "npm", "start" ]
