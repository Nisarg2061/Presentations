install:
	 @go install golang.org/x/tools/cmd/present@latest

source:
	@go install golang.org/x/tools/cmd/present@latest

present: install source
	@present
