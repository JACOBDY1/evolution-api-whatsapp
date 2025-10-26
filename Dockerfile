FROM node:20-alpine

WORKDIR /evolution

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Generate Prisma client
RUN npx prisma generate

# Expose port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
