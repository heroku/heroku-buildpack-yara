build: build-heroku-20 build-heroku-22

build-heroku-20:
	@echo "Building yara in Docker for heroku-20..."
	@docker run --platform linux/amd64 -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-20" -w /buildpack heroku/heroku:20-build scripts/build_yara /buildpack/yara-heroku-20.tgz

build-heroku-22:
	@echo "Building yara in Docker for heroku-22..."
	@docker run --platform linux/amd64 -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-22" -w /buildpack heroku/heroku:22-build scripts/build_yara /buildpack/yara-heroku-22.tgz

build-heroku-24:
	@echo "Building yara in Docker for heroku-24..."
	@docker run --platform linux/amd64 -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-24" -w /buildpack heroku/heroku:24-build scripts/build_yara /buildpack/yara-heroku-24.tgz

shell:
	@echo "Opening heroku-24 shell..."
	@docker run --platform linux/amd64 -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-24" -w /buildpack heroku/heroku:24-build bash
