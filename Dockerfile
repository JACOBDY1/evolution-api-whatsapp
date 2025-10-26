# Use Evolution API official image
FROM atendai/evolution-api:latest

# Expose port
EXPOSE 8080

# Start the application
CMD ["node", "./dist/src/main.js"]
