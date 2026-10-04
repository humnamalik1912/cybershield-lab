# Use an official lightweight Node.js image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy the rest of the app
COPY . .

# App port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]