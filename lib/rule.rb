class Rule
  attr_accessor :ip ,:subnet, :destination, :default

    def initialize 
      @ip  , @subnet , @destination, @default =  nil, nil, nil, nil
    end

   class << self
    def get_inputs
    	begin
      Helper.note
    	rules = Helper.take_rules  #All rules defined
      routes = Helper.take_routes #All routes defined
    	Simulate.with_inputs_to_destination rules, routes
    rescue => e 
    	p e.message
      p e.backtrace
    end
    end

    end
end