# Use Node base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY backend/ ./backend/
WORKDIR /app/backend

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
