FROM alpine:3.23.4

RUN <<EOF
	test="Hello World!"
	echo "$test" > /test.txt
EOF

COPY test.sh /test.sh

CMD ["/test.sh"]
