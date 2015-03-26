push:
	rsync -av --partial --progress --exclude=.git --exclude==Makefile . parkwd@parkwoodresidents.org:parkwoodresidents.org/
