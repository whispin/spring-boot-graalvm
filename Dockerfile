FROM ghcr.io/graalvm/graalvm-community:21

EXPOSE 8080
USER 1000

# Set the environment variables for JMX options
ENV JAVA_OPTS="-XX:+UseZGC -XX:+ZGenerational -Xms768m -Xmx768m -XX:+ExitOnOutOfMemoryError"

ARG JAR_FILE=api-gateway-*.jar
ENV JAR_FILE=${JAR_FILE}
ENV TZ "Africa/Johannesburg"

COPY target/${JAR_FILE} /
ENTRYPOINT exec java ${JAVA_OPTS} -jar /${JAR_FILE}
