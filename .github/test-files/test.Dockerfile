FROM alpine:3.23.6@sha256:85fe1e81d6758c208f3e1eed4338a1997e19d4be002d4dd32d3100c9a8c010a0

RUN <<EOF
	test="Hello World!"
	echo "$test" > /test.txt
EOF

COPY test.sh /test.sh

CMD ["/test.sh"]
