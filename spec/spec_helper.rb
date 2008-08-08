ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require File.expand_path(File.dirname(__FILE__) + '/factories')
require File.expand_path(File.dirname(__FILE__) + '/video_helper')
require 'spec'
require 'spec/rails'

include AuthenticatedTestHelper
include AuthenticatedSystem

Spec::Runner.configure do |config|
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
  
  config.global_fixtures = :all
  
  config.after(:suite) { delete_temp_videos }
end