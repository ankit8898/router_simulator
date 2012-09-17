require 'rubygems'
require 'highline/import'
require File.expand_path('../lib/helper.rb', __FILE__)
require File.expand_path('../lib/simulate.rb', __FILE__)
require File.expand_path('../lib/subnet.rb', __FILE__)
require File.expand_path('../lib/rules.rb', __FILE__)

class RouterSimulator
   class << self
   	def route!
   		Simulate.start #starts the simulation
   	  end
   end
end

p RouterSimulator.route!


