# Load the Rails application.
require File.expand_path('../application', __FILE__)

APP_CONFIG = YAML.load(File.open(File.dirname(__FILE__) + "/app_config.yml", "r").read)

# Initialize the Rails application.
Demoapi::Application.initialize!
