## Version 1.0.0 2015-09-18

* Added: ACL options are verified when they are set, and coerced into usable
  values when possible.
* Added: Specify an `aws_signer` lambda for use signing authenticated content
  served through services like CloudFront.

## Version 1.0.0-rc.1 2015-07-02

* Continues where 0.6.0 left off. This wraps AWS-SDK v2 and all of the breaking
  changes that contains. Please see the specific breaking change notes contained
  in `0.6.0` below.

## Version 0.7.0 2015-07-02

* Revert to AWS-SDK v1. There are too many breaking changes between v1 and v2 to
  be wrapped in a minor version change. This effectively reverts all changes
  betwen `0.5.0` and `0.6.0`, restoring the old `0.5.0` behavior.

## Version 0.6.0 2015-06-26

* Breaking Change: Updated to use AWS-SDK v2 [Mark Oleson]
  * You must specify a region in your `aws_credentials` configuration
  * You must use hyphens in ACLs instead of underscores (`:public_read` becomes
    `:'public-read'` or `'public-read'`)
  * Authenticated URL's are now longer than 255 characters. If you are caching
    url values you'll need to ensure columns allow 255+ characters.
  * Authenticated URL expiration has been limited to 7 days.

## Version 0.5.0 2015-01-31

* Change: Nudge the expected AWS-SDK version.
* Fix `exists?` method of AWS::File (previously it always returned true)
  [Felix Bünemann]
* Fix `filename` method of AWS::File for private files and remove url encoding.
  [Felix Bünemann]

## Version 0.4.1 2014-03-28

* Fix regression in `aws_read_options` defaulting to `nil` rather than an empty
  hash. [Johannes Würbach]

## Version 0.4.0 2014-03-20

* Allow custom options for authenticated urls [Filipe Giusti]
* Loosen aws-sdk constraints
* Add `aws_read_options` and `aws_write_options` [Erik Hanson and Greg Woodward]

## Version 0.3.2 2013-08-06

* And we're back to passing the path. An updated integration test confirms it
  is working properly.

## Version 0.3.1 2013-05-23

* Use the "alternate" object writing syntax. The primary method (as documented)
  only uploads the path itself rather than the file.

## Version 0.3.0 2013-05-23

* Pass the file path directly to aws-sdk to prevent upload timeouts stemming
  incorrect `content_length`.

## Version 0.2.1 2013-04-20

* Provide a `to_file` method on AWS::File in an attempt to prevent errors when
  re-uploading a cached file.

## Version 0.2.0 2013-04-19

* Update aws-sdk depdendency to 1.8.5
* Clean up some internal storage object passing

## Version 0.1.1 2013-04-09

* Fix storage bug when if `aws_attributes` is blank [#1]

## Version 0.1.0 2013-02-04

* Initial release, experimental with light expectation based spec coverage.
