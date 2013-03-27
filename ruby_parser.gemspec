--- !ruby/object:Gem::Specification 
name: ruby_parser
version: !ruby/object:Gem::Version 
  hash: 1
  prerelease: 
  segments: 
  - 2
  - 3
  - 1
  version: 2.3.1
platform: ruby
authors: 
- Ryan Davis
autorequire: 
bindir: bin
cert_chain: []

date: 2013-03-27 00:00:00 Z
dependencies: 
- !ruby/object:Gem::Dependency 
  type: :runtime
  version_requirements: &id001 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ~>
      - !ruby/object:Gem::Version 
        hash: 7
        segments: 
        - 3
        - 0
        version: "3.0"
  requirement: *id001
  prerelease: false
  name: sexp_processor
- !ruby/object:Gem::Dependency 
  type: :development
  version_requirements: &id002 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ~>
      - !ruby/object:Gem::Version 
        hash: 19
        segments: 
        - 3
        - 10
        version: "3.10"
  requirement: *id002
  prerelease: false
  name: rdoc
- !ruby/object:Gem::Dependency 
  type: :development
  version_requirements: &id003 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ~>
      - !ruby/object:Gem::Version 
        hash: 11
        segments: 
        - 1
        - 4
        - 6
        version: 1.4.6
  requirement: *id003
  prerelease: false
  name: racc
- !ruby/object:Gem::Dependency 
  type: :development
  version_requirements: &id004 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ~>
      - !ruby/object:Gem::Version 
        hash: 13
        segments: 
        - 3
        - 5
        version: "3.5"
  requirement: *id004
  prerelease: false
  name: hoe
description: |-
  ruby_parser (RP) is a ruby parser written in pure ruby (utilizing
  racc--which does by default use a C extension). RP's output is
  the same as ParseTree's output: s-expressions using ruby's arrays and
  base types.
  
  As an example:
  
    def conditional1(arg1)
      if arg1 == 0 then
        return 1
      end
      return 0
    end
  
  becomes:
  
    s(:defn, :conditional1,
     s(:args, :arg1),
     s(:scope,
      s(:block,
       s(:if,
        s(:call, s(:lvar, :arg1), :==, s(:arglist, s(:lit, 0))),
        s(:return, s(:lit, 1)),
        nil),
       s(:return, s(:lit, 0)))))
email: 
- ryand-ruby@zenspider.com
executables: 
- ruby_parse
extensions: []

extra_rdoc_files: 
- History.txt
- Manifest.txt
- README.txt
files: 
- .autotest
- History.txt
- Manifest.txt
- README.txt
- Rakefile
- bin/ruby_parse
- lib/gauntlet_rubyparser.rb
- lib/ruby_lexer.rb
- lib/ruby_parser.y
- lib/ruby_parser.rb
- lib/ruby_parser_extras.rb
- test/test_ruby_lexer.rb
- test/test_ruby_parser.rb
- test/test_ruby_parser_extras.rb
- .gemtest
homepage: https://github.com/seattlerb/ruby_parser
licenses: []

post_install_message: 
rdoc_options: 
- --main
- README.txt
require_paths: 
- lib
required_ruby_version: !ruby/object:Gem::Requirement 
  none: false
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      hash: 3
      segments: 
      - 0
      version: "0"
required_rubygems_version: !ruby/object:Gem::Requirement 
  none: false
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      hash: 3
      segments: 
      - 0
      version: "0"
requirements: []

rubyforge_project: parsetree
rubygems_version: 1.8.25
signing_key: 
specification_version: 3
summary: ruby_parser (RP) is a ruby parser written in pure ruby (utilizing racc--which does by default use a C extension)
test_files: 
- test/test_ruby_parser_extras.rb
- test/test_ruby_parser.rb
- test/test_ruby_lexer.rb
