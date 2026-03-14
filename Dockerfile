# Use the official Node.js 20 image.
FROM node:20-alpine

# Set the working directory in the container.
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of the application's code.
COPY . .

# The Next.js app runs on port 9002 as specified in package.json.
EXPOSE 9002

# The command to start the app in development mode.
CMD ["npm", "run", "dev"]
