.PHONY: install

install: VERSION=`cat TILMAN_VERSION`
# URL=https://github.com/mentels/tilman/releases/download/${VERSION}/tilman
install:
	@echo Installing tilman version=${VERSION}
	curl -L https://github.com/mentels/tilman/releases/download/${VERSION}/tilman -o ./tilman 
    # curl ${URL} -o ./tilman 
	@chmod u+x tilman