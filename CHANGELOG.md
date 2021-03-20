# Changelog (Marathon)
## [0.1.1] - 2021-03-19
### Changed
- Middleware now adds multiple headers instead of folding all the cookies into one header.
- Project is now using null-safety.

___

Below is the changelog kept by Izolate before the forking point. See README.md
for more details.

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [1.1.1] - 2019-08-12
### Changed
- Used cookie parsing function from dart:io

## [1.1.0] - 2019-08-12
### Added
- Ability to set cookie attributes (Secure, HttpOnly, etc.)
- Method to clear all cookies in list

## [1.0.2] - 2019-08-11
### Fixed
- Set multiple cookies correctly

## [1.0.1] - 2019-08-11
### Added
- Changelog
- Examples

## [1.0.0] - 2019-08-11
### Added
- Cookie parser
- Cookie parser middleware
