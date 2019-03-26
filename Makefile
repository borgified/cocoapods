build:
	docker build . -t $(notdir $(basename $(PWD)))
run: build
	docker run -it -v $(PWD)/work:/work $(notdir $(basename $(PWD)))
