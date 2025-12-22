# 1️⃣ Use official Node.js LTS image
FROM node:20-alpine

# 2️⃣ Set working directory
WORKDIR /app

# 3️⃣ Copy dependency files first (better layer caching)
COPY package.json package-lock.json* ./

# 4️⃣ Install dependencies (production only)
RUN npm install --only=production

# 5️⃣ Copy application source
COPY . .

# 6️⃣ Create non-root user and switch
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# 7️⃣ Expose app port
EXPOSE 3000

# 8️⃣ Start the application
CMD ["node", "server.js"]
