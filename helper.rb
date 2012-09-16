class Helper
  class << self
    def take_inputs rules
    rules.each { |rule|
  		rule.ip = ask("What is the IP for Rule - #{no rules, rule}: ")
  		rule.subnet = ask("What is the Subnet for Rule - #{no rules, rule}: ")
  		rule.destination = ask("What is the Destination for Rule - #{no rules, rule}: ")
    }
    end
   def note
   say("Note: The IP should be in the format of eg 162.12.13.123 and Numbers will be Integer, currently the application supports Subnets of types #{Subnet::CLASS.keys.join(',')} with values #{Subnet::CLASS.values.join(',')}.  Enjoy Router Simulating!!")
   end

   def no rules ,rule
  	rules.index(rule) + 1
  end
  end
end