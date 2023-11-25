# Makefile

# 例) final-1のホスト名
REMOTE_HOST_1=ec2-46-51-233-201.ap-northeast-1.compute.amazonaws.com

# ホストマシンから実行する。
deploy-1:
	bash ./deploy.sh $(REMOTE_HOST_1)

# ホストマシンから実行する。
remote-ssh-1:
	ssh isucon@${REMOTE_HOST_1}

# リモートサーバーで実行する。
rotate-nginx:
	bash rotate-nginx-log.sh

# リモートサーバーで実行する。
rotate-mysql:
	bash rotate-slow-query-log.sh
