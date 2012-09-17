class Simulate 

 class << self

	def start
       Rules.get_inputs
	end
  #checking the rules and transferring the packets to destination
	def with_inputs_to_destination rules, routes
		    routed_destination = []
		    rules.each do |rule|
			ntwrk_sub = rule.subnet.split('.').reject {|i| i.eql?("0")}
			ntwrk_ip = rule.ip.split('.')
			ntwrk_sub.count.times {ntwrk_ip.pop}
        	routes.each do |route|
				ntwrk_route = route.split('.')
				ntwrk_sub.count.times {ntwrk_route.pop}
				valid_ntwrk_ip , valid_ntwrk_route = ntwrk_ip.join('.') ,ntwrk_route.join('.')
				if valid_ntwrk_ip.eql?(valid_ntwrk_route) 
				 routed_destination << rule.destination 
				 else 
				 rule.default.empty? ? routed_destination << "NO ROUTE DEFINED" : routed_destination << rule.default
			  end
			end
		end
		routed_destination.join(', ')
     end
  end	
end
