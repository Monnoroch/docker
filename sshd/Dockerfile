FROM debian
RUN \
	apt-get update && \
	apt-get install -y \
		openssh-server && \
	mkdir /var/run/sshd && \
	sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
