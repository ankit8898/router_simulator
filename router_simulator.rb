require File.expand_path('../simulate.rb', __FILE__)
class RouterSimulator
   class << self
   	def route!
   		Simulate.start #starts the simulation
   	  end
   end
end

p RouterSimulator.route!


