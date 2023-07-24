# Use the official Node.js LTS (Long Term Support) image as the base image
FROM node:lts-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application code to the container
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port that Next.js uses (default is 3000)
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]
