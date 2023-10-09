default: lint test

setup:
	bundle install

test:
	bin/rspec

lint:
	bin/rubocop

cleanup:
	rm -f gemfather-stable-*.gem

build:
	gem build gemfather-stable.gemspec

publish:
	gem push gemfather-stable-*.gem

deploy: build publish cleanup
