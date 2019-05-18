ci: clean deps lint

clean:
	rm -rf inspec.lock bin vendor

deps:
	gem install bundler --version=1.17.3
	bundle config --local path vendor/bundle
	bundle install --binstubs

lint:
	bundle exec inspec check .
	bundle exec rubocop Gemfile controls/ libraries/

test:
	bundle exec inspec exec .

release:
	rtk release

.PHONY: ci clean deps lint test release
