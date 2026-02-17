# Use a lightweight Node.js image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
# Since we are creating a simple setup without a package.json initially, we might skip this step or create one.
# For robustness, let's assume we initialize one or just copy everything since dependencies are minimal (express).
# To make it properly reproducible, we should have a package.json. 
# But per instructions "create me a calculator app , index.html and server.js" - I will create a basic package.json too for Docker to work well.

COPY package*.json ./

# Install dependencies
# If no package.json exists yet, this might fail, so I will ensure a package.json is created in the previous steps or here.
# For now, let's copy everything and run init if needed, but standard practice is separate copy.
# Let's adjust: I'll blindly copy everything for this simple task, but a better approach is to create package.json first.
# actually, I'll add a step to create package.json in the user's workspace to make this clean.

# Let's stick to the simplest working Dockerfile for this specific request context
# We will create a package.json in the next step to ensure `npm install` works.

RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]
