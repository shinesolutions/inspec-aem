# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## 1.4.0 - 2021-09-29
### Added
- Add aem-development-bundles-enabled, aem-development-bundles-disabled, aem-development-bundles-partially-enabled controls
- Add integration test
- Add release-* GH Actions

### Changed
- Upgrade ruby_aem to 3.13.1

## 1.3.0 - 2020-02-17
### Changed
- Makefile clean target also removes Gemfile.lock file

### Fixed
- Fixed outdated Gemfile.lock file

## 1.2.0 - 2019-10-16
### Added
- Add InSpec test for checking if AEM repository migration was skipped [#6]

## 1.1.0 - 2019-07-21
### Added
- Add check for SAML

## 1.0.0 - 2019-06-06
### Changed
- Upgrade ruby_aem to 3.2.1

## 0.12.0 - 2019-05-21
### Added
- Add support for AEM 6.5 versions tests [#3]

## 0.11.0 - 2019-05-03
### Added
- Add test to check AEM upgrade.log if JAR unpacking was successful
- Add test to check AEM upgrade.log if repository migration was successful shinesolutions/swagger-aem#36
- Add test to check installed AEM version

### Changed
- Update changelog to format Keep a Changelog

## 0.11.0 - 2019-05-03
### Fixed
- Fix frozen string literal Rubocop violations

## 0.10.1 - 2018-10-10

## 0.10.0 - 2018-10-10
### Added
- Add dependencies to metadata

## 0.9.0 - 2018-05-20
### Added
- Initial version
