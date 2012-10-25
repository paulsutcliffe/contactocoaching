if ENV['RAILS_ENV'] == 'production'
  ENV['HOME'] = "/home/contactocoaching"
  ENV['GEM_HOME'] = "/home/contactocoaching/.gems"
  ENV['GEM_PATH'] = "/home/contactocoaching/.gems"
end
# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run ContactocoachingPe::Application
