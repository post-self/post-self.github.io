# Provided to satisfy cats
.PHONY: run
run:
	bundle exec jekyll serve -w

.PHONY: check
check:
	bundle exec jekyll build
	@ echo
	@ echo "Checking for duplicate permalinks..."
	@ ( \
	src=`find entry/_posts -name "????-??-??-*.md" | wc -l`; \
	dest=`find _site/entry -depth 1 | wc -l`; \
	if [ $$src -ne $$dest ]; then \
		echo "!!! Source was $$src"; \
		echo "!!! Dest was   $$dest"; \
		echo "!!! Mismatched source and dest entries; maybe a duplicate permalink?"; \
		exit 1; \
	fi \
	)
	@ echo "No duplicates found, but that was a simple test. Check by hand!"
	@ echo
	bundle exec htmlproofer _site \
		--check-favicon \
		--check-html \
		--check-opengraph \
		--internal-domains post-self.io
