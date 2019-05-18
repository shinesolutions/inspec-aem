ci: clean deps lint

clean:
	rm *.lock bin vendor

deps:
	gem install bundler
	bundle config --local path vendor/bundle
	rm -rf .bundle
	bundle install --binstubs

lint:
	bundle exec inspec check .
	bundle exec rubocop Gemfile controls/ libraries/

test:
	bundle exec inspec exec .

release:
	rtk release

.PHONY: ci clean deps lint test release
