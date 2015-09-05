FROM monnoroch/git
COPY id_rsa.pub /tmp/
RUN \
	apt-get update && \
	apt-get install -y python-setuptools && \
	cd tmp && \
	git clone https://github.com/tv42/gitosis.git && \
	cd gitosis && \
	python setup.py install && \
	chown git:git /tmp/id_rsa.pub && \
	/bin/su - git -c "gitosis-init < /tmp/id_rsa.pub" && \
	chown -R git:git /home/git/repositories && \
	chmod -R 774 /home/git/repositories && \
	chmod 755 /home/git/repositories/gitosis-admin.git/hooks/post-update && \
	rm -rf /tmp/*
