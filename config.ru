# This file is used by Rack-based servers to start the application.
# please push

STDOUT.sync = true
STDERR.sync = true

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
