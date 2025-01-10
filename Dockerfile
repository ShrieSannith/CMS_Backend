FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to ensure dependencies are installed correctly
COPY package.json ./ 
COPY package-lock.json ./

# Install dependencies (this will ensure bcrypt is built correctly for the environment)
RUN npm install

# Rebuild bcrypt from source to resolve potential compatibility issues
RUN npm rebuild bcrypt --build-from-source

# Copy the rest of the application code into the container
COPY . .

# Expose port 5000
EXPOSE 5000

# Start the application
CMD ["npm", "run", "start"]
