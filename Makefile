.PHONY: tags

default:
	@cat versions

tags:
	@for v in $$(cat versions); do \
		git tag $$v; \
	done