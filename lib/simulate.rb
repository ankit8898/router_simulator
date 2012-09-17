class Simulate 

 class << self

	def start
       Rules.get_inputs
	end
  #checking the rules and transferring the packets to destination

  def with_inputs_to_destination rules, routes
  	routed_destination = []
    routes.each {|route| routed_destination << check_with_rules(route,rules)}
    routed_destination.join(', ')
   end

  def check_with_rules(route,rules)
  	destination = []
  	rules.each do |rule|
  		ntwrk_subnet = rule.subnet.split('.').reject {|i| i.eql?("0")}
        ntwrk_ip = rule.ip.split('.')
        (4 - ntwrk_subnet.count).times {ntwrk_ip.pop}
        ntwrk_route = route.split('.')
        (4 - ntwrk_subnet.count).times {ntwrk_route.pop}
        valid_ntwrk_ip, valid_ntwrk_route = ntwrk_ip.join('.') , ntwrk_route.join('.')
        if valid_ntwrk_route.eql?valid_ntwrk_ip
        	destination  << rule.destination
        else
         if rule.default.empty?
         	 destination << "NO ROUTE DEFINED"
         else
          	destination << rule.default   	
         end
        end
      end
        destination
  	end
	
  end	
end
