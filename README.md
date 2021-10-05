[![Build Status](https://github.com/shinesolutions/inspec-aem/workflows/CI/badge.svg)](https://github.com/shinesolutions/inspec-aem/actions?query=workflow%3ACI)

InSpec AEM
----------

An [InSpec](https://www.inspec.io) profile for checking AEM resources.

Usage
-----

Run profile directly from Chef Supermarket:

    inspec supermarket exec shinesolutions/aem

Run profile directly from GitHub:

    inspec exec https://github.com/shinesolutions/inspec-aem

Run specific control:

    inspec supermarket exec shinesolutions/aem "--controls=aem-crxde-disabled aem-saml-enabled"

Run all tests:

    make test

Run all tests with custom configuration file:

    INSPEC_AEM_CONF=some-aem.yaml make test

Testing
-------

By default, integration tests require an AEM instance up and running on http://localhost:4502 with `admin` username and `admin` password.

AEM instance parameters can be overridden using environment variables `aem_protocol`, `aem_host`, `aem_port`, `aem_username`, `aem_password`, and `aem_debug`.

Integration testing can be executed using the command:

    aem_author_port=45652 aem_publish_port=45653 make test-integration
