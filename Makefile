install:
	 @go install golang.org/x/tools/cmd/present@latest

source:
	@go install golang.org/x/tools/cmd/present@latest

present: install source
	@go get golang.org/x/tools/cmd/present
	@go run golang.org/x/tools/cmd/present
