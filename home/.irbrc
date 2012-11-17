require 'rubygems' rescue nil
require 'wirble'
require 'hirb'
require 'ap'

Wirble.init
Wirble.colorize

Hirb::View.enable

IRB.conf[:AUDO_INDENT] = true

if defined?(Rails) && !Rails.env.nil?
  if Rails.logger
    Rails.logger = Logger.new(STDOUT)
    ActiveRecord::Base.logger = Rails.logger
  end
end