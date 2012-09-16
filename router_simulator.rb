require 'rubygems'
require 'highline/import'
require File.expand_path('../helper.rb', __FILE__)
require File.expand_path('../simulate.rb', __FILE__)
require File.expand_path('../subnet.rb', __FILE__)
require File.expand_path('../rules.rb', __FILE__)

class RouterSimulator
   class << self
   	def route!
   		Simulate.start #starts the simulation
   	  end
   end
end

p RouterSimulator.route!


