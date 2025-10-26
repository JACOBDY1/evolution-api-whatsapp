FROM node:20-alpine

WORKDIR /app

# Copy everything first
COPY . .

# Install dependencies
RUN npm install

# Generate Prisma client
RUN npx prisma generate

# Expose port
EXPOSE 8080

# Start
CMD ["npm", "run", "start"]
