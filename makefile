
build: ##build 
	@hugo -d./dist
Hello: ##hello
	@echo "hello world"
welcome: ##welcome
	@echo "welcome"
post: ##post
	@hugo new posts/${POST_NAME}.md
	@sed -i "s/title:\".*\"/title:\"${POST_TITLE}\"/" content/posts/${POST_NAME}.md
clean: ##clean
	@rm -r dist/*
help: ##HELP	
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
