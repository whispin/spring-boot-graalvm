#FROM ghcr.io/graalvm/graalvm-community:21
FROM ubuntu:jammy
EXPOSE 8080
ENV TZ "Africa/Johannesburg"

# Create app directory and copy the executable
RUN mkdir -p /app
COPY target/app /app/app
RUN chmod +x /app/app

# Switch to user 1000 for security
USER 1000

# Set the working directory
WORKDIR /app

# Run the app
ENTRYPOINT ["./app"]
