# Atlas container lab image
FROM node:20-alpine

WORKDIR /app

# Install dependencies first for better layer caching
COPY package.json ./
RUN npm install

# Copy application source
COPY . .

# Document the port the container listens on
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
