ci: tools deps lint

clean:
	rm *.lock bin vendor

deps:
	bundle config --local path vendor/bundle
	bundle install --binstubs

lint:
	bundle exec inspec check .
	bundle exec rubocop Gemfile controls/ libraries/

test:
	bundle exec inspec exec .

tools:
	gem install bundler

.PHONY: ci clean deps lint test tools
