
# Use Node.js 16 as the base image for the application.
FROM node:16

# Set the working directory inside the container.
WORKDIR /app

# Copy the package files into the container.
COPY package*.json ./

# Install the application's dependencies.
RUN npm install

# Copy the remaining application files into the container.
COPY . .

# Make port 3000 available for the application.
EXPOSE 3000

# Start the application when the container launches.
CMD ["npm", "start"]
