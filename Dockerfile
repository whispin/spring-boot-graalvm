FROM ghcr.io/graalvm/graalvm-community:21
EXPOSE 8080
USER 1000

ENV TZ "Africa/Johannesburg"

COPY target/app /
ENTRYPOINT ["./app"]
