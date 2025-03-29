FROM node:18
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the entire backend code
COPY . .

# Expose the backend port
EXPOSE 5000

# Start the server
CMD ["node", "index.js"]
