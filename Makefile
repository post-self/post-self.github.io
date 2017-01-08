.PHONY: help
help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: run
run: ## Run the development server, watching for changes.
	bundle exec jekyll serve -w

.PHONY: check
check: check-ratings check-permalinks lint ## Check the site for ratings, permalinks, build sanity, and HTML well-formedness.

.PHONY: build
build: ## Build the site into the default location (_site/)
	bundle exec jekyll build --verbose --future

.PHONY: check-permalinks
check-permalinks: build ## Check that each entry builds its own unique permalink.
	@ echo
	@ echo "Checking for duplicate permalinks..."
	# Simple check that each post generates its own index.html file
	# Looks to make sure that there aren't more sources than destinations, but
	# cannot test for category indices.
	@ ( \
	src=`find entry/_posts -name "????-??-??-*.*" | wc -l`; \
	dest=`find _site/entry -name index.html | wc -l`; \
	if [ $$src -gt $$dest ]; then \
		echo "!!! Source was $$src"; \
		echo "!!! Dest was   $$dest"; \
		echo "!!! Mismatched source and dest entries; maybe a duplicate permalink?"; \
		exit 1; \
	fi \
	)
	@ echo "No duplicates found, but that was a naive test. Check by hand!"
	@ echo

.PHONY: check-ratings
check-ratings: ## Check that each entry has a valid rating.
	@ echo
	@ echo "Checking for ratings..."
	@ ( \
	for i in `find entry/_posts -name "????-??-??-*.*"`; do \
		echo "Checking $$i"; \
		grep -qE '^rating:\s+(green|yellow|red)$$' $$i; \
	done \
	)
	@ echo "Ratings found in all files."
	@ echo

.PHONY: lint
lint: ## Check that all generated HTML files are well-formed.
	bundle exec jekyll hyde
	bundle exec htmlproofer _site \
		--check-favicon \
		--check-html \
		--check-opengraph \
		--file-ignore '/_site\/posts\/.*/' \
		--log-level debug \
		--internal-domains post-self.io
