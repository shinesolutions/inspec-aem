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

Run all tests:

    make test

Run all tests with custom configuration file:

    INSPEC_AEM_CONF=some-aem.yaml make test
