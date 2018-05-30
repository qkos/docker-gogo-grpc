.PHONY: tags

default:
	@cat versions

tags:
	@for v in $$(cat versions); do \
		git tag -f $$v; \
		git push --force origin refs/tags/$${v}:refs/tags/$${v}; \
	done