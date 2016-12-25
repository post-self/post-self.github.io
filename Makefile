# Provided to satisfy cats
.PHONY: run
run:
	bundle exec jekyll serve -w

.PHONY: check
check:
	bundle exec jekyll build
	bundle exec htmlproofer _site \
		--check-favicon \
		--check-html \
		--check-opengraph \
		--internal-domains post-self.io
