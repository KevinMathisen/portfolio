# Build stage
FROM node:20 as build-stage
WORKDIR /app
# Copy and install files into the container
COPY package*.json ./
RUN npm install
COPY . .
# Build the app
RUN npm run build

# Production stage
FROM nginx:stable-alpine as production-stage
# Copy the build files to the nginx server
COPY --from=build-stage /app/build /usr/share/nginx/html
# Copy nginx.conf
COPY server/nginx.conf /etc/nginx/nginx.conf
# Copy error pages
COPY server/404.html /usr/share/nginx/html
COPY server/500.html /usr/share/nginx/html
# Expose port 80 and start nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
