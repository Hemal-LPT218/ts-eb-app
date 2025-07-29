# Use official Node.js base image
FROM public.ecr.aws/docker/library/node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
COPY tsconfig.json ./
RUN npm install

# Copy app source BEFORE build
COPY /src ./src

# Build the TypeScript app
RUN npm run build

# Expose the port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
