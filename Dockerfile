# Gunakan base image Node.js versi 14
FROM node:14

# Set direktori kerja dalam container ke /app
WORKDIR /app

# Salin seluruh file project ke dalam container
COPY . .

# Set environment variable
ENV NODE_ENV=production DB_HOST=item-db

# Install dependency production dan build project
RUN npm install --production --unsafe-perm && npm run build

# Buka port 8080
EXPOSE 8080

# Jalankan aplikasi saat container berjalan
CMD ["npm", "start"]
