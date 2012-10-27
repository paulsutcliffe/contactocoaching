if ENV['RAILS_ENV'] == 'production'
  ENV['HOME'] = "/home/ccoacher"
  ENV['GEM_HOME'] = "/home/ccoacher/.gems"
  ENV['GEM_PATH'] = "/home/ccoacher/.gems"
end
# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Contactocoaching::Application
