#FROM ghcr.io/graalvm/graalvm-community:21
FROM public.ecr.aws/amazonlinux/amazonlinux:2
EXPOSE 8080
USER 1000

ENV TZ "Africa/Johannesburg"

WORKDIR /app
COPY app .
ENTRYPOINT ["./app"]
