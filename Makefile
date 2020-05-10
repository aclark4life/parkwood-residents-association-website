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

tidy:
	-tidy -m home2.html
	-tidy -m sidebar.html

deploy:
	rsync -av --partial --progress --exclude=.git --exclude=Makefile --delete . parkwd@parkwoodresidents.org:parkwoodresidents.org/
