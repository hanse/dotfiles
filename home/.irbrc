require 'rubygems' rescue nil
require 'wirble'
require 'hirb'
require 'ap'

Wirble.init
Wirble.colorize
Hirb.enable

IRB.conf[:USE_READLINE] = true
IRB.conf[:AUTO_INDENT] = true

if defined?(Rails) && !Rails.env.nil?
  if Rails.logger
    Rails.logger = Logger.new(STDOUT)
    ActiveRecord::Base.logger = Rails.logger
  end

  def sql(query)
    ActiveRecord::Base.connection.select_all(query)
  end
end

class Object
  def local_methods
    (self.methods - Object.instance_methods).sort
  end
end