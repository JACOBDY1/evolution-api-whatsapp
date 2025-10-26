# Evolution API Dockerfile for Railway
FROM node:20-alpine

# Set working directory
WORKDIR /evolution

# Install git and other dependencies
RUN apk add --no-cache git

# Clone Evolution API repository
RUN git clone https://github.com/EvolutionAPI/evolution-api.git .

# Install dependencies
RUN npm install

# Expose port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
