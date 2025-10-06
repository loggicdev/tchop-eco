# Multi-stage Docker build for Flutter Web
FROM ghcr.io/cirruslabs/flutter:stable AS build

# Set working directory
WORKDIR /app

# Copy pubspec files first for dependency caching
COPY pubspec.yaml pubspec.lock ./
COPY dependencies/ dependencies/

# Download dependencies
RUN flutter pub get

# Copy the rest of the source code
COPY . .

# Build the Flutter web app
RUN flutter build web --release --base-href /

# Production stage - use a simple static file server
FROM busybox:1.36

# Copy the built web app
COPY --from=build /app/build/web /www

# Create a simple HTTP server script
RUN echo '#!/bin/sh' > /start.sh && \
    echo 'cd /www' >> /start.sh && \
    echo 'exec busybox httpd -f -v -p 8080' >> /start.sh && \
    chmod +x /start.sh

# Expose port 8080
EXPOSE 8080

# Start the server
CMD ["/start.sh"]