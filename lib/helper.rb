  class Helper
    class << self
      def take_rules
    	count = ask("Number of rules: ",Integer)  #Number of rules to be made
      rules  ||= Array.new
    	count.times { |i| rules << Rule.new }
      rules.each { |rule|
    		rule.ip = ask("What is the IP for Rule - #{no rules, rule} ?  ")
    		rule.subnet = ask("What is the Subnet for Rule - #{no rules, rule} ?  ")
    		rule.destination = ask("What is the Destination for Rule - #{no rules, rule} ?  ")
      }
      default_destination = ask("Default destination: ")
      rules.each {|rule| rule.default = default_destination} #default destination defined
      rules
      end

     def take_routes
      routes ||= Array.new
      no_of_route_statements = ask("Number of route statements: ",Integer) #Number of routes to be sent
      no_of_route_statements.times {|i| routes << Route.new}
      routes.each { |route|
       route.ip =  ask("Enter Route - #{no routes, route}: ")
      }
     routes
     end

     def note
      say("Note: The IP should be in the format of eg 162.12.13.123 and Numbers will be Integer, currently the application supports Subnets of types #{Subnet::CLASS.keys.join(',')} with values #{Subnet::CLASS.values.join(',')}.  Enjoy Router Simulating!!")
     end

     def no rules ,rule
    	rules.index(rule) + 1
    end
    end
  end