publish:
	git commit -a -m "Update"; git push
	rsync -av --partial --progress --exclude=.git --exclude==Makefile . parkwd@parkwoodresidents.org:parkwoodresidents.org/
