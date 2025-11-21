# Changelog

## 0.2.0 (2025-11-21)

Full Changelog: [v0.1.0...v0.2.0](https://github.com/legalesign/legalesign-rest-ruby/compare/v0.1.0...v0.2.0)

### Features

* handle thread interrupts in the core HTTP client ([09fce02](https://github.com/legalesign/legalesign-rest-ruby/commit/09fce02cd46c70e62aaebe3ce5db31265ac07b57))


### Bug Fixes

* absolutely qualified uris should always override the default ([accbe51](https://github.com/legalesign/legalesign-rest-ruby/commit/accbe517d8b7e34580c59f0abca767efb910d9af))
* always send `filename=...` for multipart requests where a file is expected ([5813768](https://github.com/legalesign/legalesign-rest-ruby/commit/5813768c3908da5e30ea445a436b1717fadc0f5b))
* better thread safety via early initializing SSL store during HTTP client creation ([ed77883](https://github.com/legalesign/legalesign-rest-ruby/commit/ed77883cea949f67ab390ef3dac4c73bc0681d60))
* coroutine leaks from connection pool ([6c3463f](https://github.com/legalesign/legalesign-rest-ruby/commit/6c3463f441d4b806ef649968c6e6c8b21b2536cd))
* shorten multipart boundary sep to less than RFC specificed max length ([40b68db](https://github.com/legalesign/legalesign-rest-ruby/commit/40b68dbad30504b67d6b0414f0e3a6db5b744d5f))
* should not reuse buffers for `IO.copy_stream` interop ([a55c302](https://github.com/legalesign/legalesign-rest-ruby/commit/a55c302e8c10ecf93cea0fa83947a5aba26ec2b3))


### Performance Improvements

* faster code formatting ([965c16e](https://github.com/legalesign/legalesign-rest-ruby/commit/965c16efdfe71903a187923892a24a1ace2cede5))


### Chores

* allow fast-format to use bsd sed as well ([7761d66](https://github.com/legalesign/legalesign-rest-ruby/commit/7761d660ef68e49ac02068f322747682ba295fc2))
* bump dependency version and update sorbet types ([fd8d531](https://github.com/legalesign/legalesign-rest-ruby/commit/fd8d5314d47b22b912990c757931a1a4fda8da35))
* explicitly require "base64" gem ([ea768a1](https://github.com/legalesign/legalesign-rest-ruby/commit/ea768a157f48c9fc9ea665555d25371e07d7a6ed))
* ignore linter error for tests having large collections ([6680ab3](https://github.com/legalesign/legalesign-rest-ruby/commit/6680ab334e2a95d5b6b8d14fb1e98d5af4961da4))
* **internal:** codegen related update ([67df45b](https://github.com/legalesign/legalesign-rest-ruby/commit/67df45b7c847eb909ea593e9dd0832efdfdb1923))

## 0.1.0 (2025-09-23)

Full Changelog: [v0.0.1...v0.1.0](https://github.com/legalesign/legalesign-rest-ruby/compare/v0.0.1...v0.1.0)

### Features

* **api:** manual updates ([dddf80d](https://github.com/legalesign/legalesign-rest-ruby/commit/dddf80d43e8ce22cd53e08f9697b409ddc649292))
* expose response headers for both streams and errors ([46f7a11](https://github.com/legalesign/legalesign-rest-ruby/commit/46f7a118b2d1b6eaabf7380efdcb9f01bdeebc33))


### Chores

* configure new SDK language ([0905152](https://github.com/legalesign/legalesign-rest-ruby/commit/090515263f2d46ab12a66d636d9295f71d44f645))
* configure new SDK language ([f69f758](https://github.com/legalesign/legalesign-rest-ruby/commit/f69f7584a6f9203beacb28476f295ffc81bd8d1a))
* sync repo ([c93f9ad](https://github.com/legalesign/legalesign-rest-ruby/commit/c93f9ad227bdbfc9a72c84e407d3550df3c7c9c9))
* update SDK settings ([7525fd2](https://github.com/legalesign/legalesign-rest-ruby/commit/7525fd2c4f87acfa3b5a114109c2ef9906902307))
* update SDK settings ([31af075](https://github.com/legalesign/legalesign-rest-ruby/commit/31af075c652a2cc7efa58f4adadc9495582b02d8))
