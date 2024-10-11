# Development stage
FROM node:18 AS dev

WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Expose the port
EXPOSE 3000

# Enable hot reloading in development mode
CMD ["npm", "run", "dev"]
