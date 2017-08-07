Gem::Specification.new do |s|
  s.name = 'logstash-codec-snowplow'
  s.version = '0.3'
  s.licenses = ['Apache-2.0']
  s.summary = 'This example input streams a string at a definable interval.'
  s.description = 'This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program'
  s.authors = ['Robson Júnior']
  s.email = 'bsao@cerebello.co'
  s.homepage = 'http://cerebello.co'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*', '*.gemspec', '*.md', 'Gemfile']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = {'logstash_plugin' => 'true', 'logstash_group' => 'codec'}

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', '~> 2.0'
  s.add_runtime_dependency 'logstash-codec-line'
  s.add_development_dependency 'logstash-devutils'
end
