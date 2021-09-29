#!/usr/bin/env bash
set -o errexit

AUTHOR_PUBLISH_CONTROLS="aem-crxde-enabled aem-crxde-disabled aem-development-bundles-enabled aem-development-bundles-disabled aem-development-bundles-partially-enabled aem-saml-enabled aem-saml-disabled aem-login-page-avaiable aem-login-page-not-avaiable aem-6.2.0-version-installed aem-6.2.0.SP1-CFP15-version-installed aem-6.3.0-version-installed aem-6.4.0-version-installed aem-6.5.0-version-installed"
AUTHOR_CONTROLS="author-aem-6.2-standalone-quickstart-exist author-aem-6.3-standalone-quickstart-exist author-aem-6.4-standalone-quickstart-exist author-aem-6.5-standalone-quickstart-exist author-aem-6.2-standalone-quickstart-dont-exist author-aem-6.3-standalone-quickstart-dont-exist author-aem-6.4-standalone-quickstart-dont-exist author-aem-6.5-standalone-quickstart-dont-exist aem-author-succesfully-upgraded"

echo "Testing generic AEM Author and AEM Publish controls..."
for CONTROL in ${AUTHOR_PUBLISH_CONTROLS}
do
  echo "Testing control: $CONTROL..."
  bundle exec inspec exec . "--controls=$CONTROL" || echo "Allowing test failure..."
done

echo "Testing generic AEM Author specific controls..."
for CONTROL in ${AUTHOR_CONTROLS}
do
  echo "Testing control: $CONTROL..."
  bundle exec inspec exec . "--controls=$CONTROL" || echo "Allowing test failure..."
done