FROM monnoroch/sshd
RUN \
	apt-get update && \
	apt-get install git -y && \
	useradd -d /home/git -s /bin/bash -m git && \
	mkdir /home/git/.ssh/ && \
	touch /home/git/.ssh/authorized_keys && \
	chown -R git:git home/git/.ssh/
