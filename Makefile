include base.mk

#-------------------------------------------------------------------------------
#
# Custom Overrides
#
# https://stackoverflow.com/a/49804748

#PROJECT = project
#APP = app
.DEFAULT_GOAL=commit-push
#install: pip-install
#serve: django-serve

deploy:
	tidy -m home2.html
	tidy -m sidebar.html
	$(MAKE) git-commit-auto-push   
	rsync -av --partial --progress --exclude=.git --exclude=Makefile . parkwd@parkwoodresidents.org:parkwoodresidents.org/
