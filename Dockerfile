# Dockerfile for Focus Widget App

# Use an official Node.js runtime as a parent image
FROM node:20-alpine as builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Transpile TypeScript
RUN npm run build

# --- Production Stage ---
FROM node:20-alpine

WORKDIR /app

# Copy only necessary files from the builder stage
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/dist ./dist

# Install production dependencies
RUN npm install --only=production

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
CMD [ "npm", "start" ]
