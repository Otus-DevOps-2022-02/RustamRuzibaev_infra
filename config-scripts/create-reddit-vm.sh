yc compute instance create \
	--name reddit-app-full \
	--hostname reddit-app-full \
	--memory=2 \
	--cores=2 \
	--core-fraction=5 \
	--create-boot-disk image-family=reddit-full \
	--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
	--ssh-key ~/.ssh/appuser.pub
