# FirstJrubyGem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/first_jruby_gem`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'first_jruby_gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install first_jruby_gem

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## How to build, test and deploy using generic pipelines with docker
The repository contains a Dockerfile, pipeline.json file and a Jenkinsfile.
It also contains a subdirectory ./stages which contains shell scripts to run the following steps in the build process:
* 01_clone.sh (clones the source repository in the docker container)
* 02_build.sh (run the build steps for that type of project in the docker container)
* 03_test.sh (run the test steps for that type of project in the docker container
* 04_gen_doc.sh (run the steps to generate the documentation in the docker container)

To run all shell scripts at once, run the 00_run.sh in the docker container.
E.g.
```
$ docker run -it -e GITHUB_URL="https://github.com/JoostVanAverbeke/first_jruby_gem" 
-e BRANCH_NAME="whathever" docker4jruby /stages/00_run.sh
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/first_jruby_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FirstJrubyGem project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/first_jruby_gem/blob/master/CODE_OF_CONDUCT.md).
