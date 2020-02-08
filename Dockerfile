FROM chrisgavin/sosume:1.0.0 AS sosume
FROM node:13
ARG VERSION
COPY --from=sosume /var/opt/sosume/ /var/opt/sosume/
RUN deluser node && \
	npm install -g @bitwarden/cli@$VERSION
ENTRYPOINT ["/var/opt/sosume/sosume", "bw"]
