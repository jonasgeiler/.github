FROM alpine:3.24.4@sha256:93b41ef40b1677fce8fcc64ff4af09daddfacf5040afde618bc46c1e2d1cc7d4

RUN <<EOF
	test="Hello World!"
	echo "$test" > /test.txt
EOF

COPY test.sh /test.sh

CMD ["/test.sh"]
