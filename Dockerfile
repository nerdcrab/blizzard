# BlizzardOS — static single-file site.
# Build with any OCI-compatible tool: docker build -t blizzard .
# Run with: docker run -p 8080:80 blizzard
FROM nginx:1.27-alpine

# Replace the default welcome page with the BlizzardOS single-file app.
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

# nginx:alpine's default CMD already starts nginx in the foreground.
