ci: clean deps lint

clean:
	rm -rf inspec.lock Gemfile.lock bin vendor

deps:
	gem install bundler --version=1.17.3
	bundle config --local path vendor/bundle
	bundle install --binstubs

lint:
	bundle exec inspec check .
	bundle exec rubocop Gemfile controls/ libraries/

test:
	bundle exec inspec exec .

test-integration:
	INSPEC_AEM_CONF=conf/aem.yaml test/integration/test-controls-author.sh
	# AEM Publish controls are currently not tested due to integration test currently only provides AEM Author test environment

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

release: release-minor


.PHONY: ci clean deps lint test test-integration release release-major release-minor release-patch
