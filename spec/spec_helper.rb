require 'bundler/setup'
require 'vagrant-libvirt'
require 'simplecov'
SimpleCov.start

RSpec.configure do |config|
  config.order = 'random'
end

Dir[File.dirname(__FILE__) + '/support/*.rb'].each { |f| require f }
