# Use Node 18.x as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code into the container
COPY . .

# Expose port 8080 (you can change this if needed)
EXPOSE 8080

# Use nodemon for development (dev script)
CMD ["npm", "run", "dev"]
