require 'rubygems'
require 'highline/import'
require File.expand_path('../helper.rb', __FILE__)
require File.expand_path('../simulate.rb', __FILE__)
class Rules
attr_accessor :ip ,:subnet, :destination, :default

  def initialize 
    @ip  , @subnet , @destination, @default =  nil, nil, nil, nil
  end

 class << self
  def get_inputs
  	begin
    Helper.note
  	count = ask("Number of rules: ",Integer)  #Number of rules to be made
  	arr  ||= Array.new
  	count.times { |i| arr << new }
  	rules = Helper.take_inputs arr #All rules defined
    default_destination = ask("Default destination: ") #default destination defined
    no_of_route_statements = ask("Number of route statements: ",Integer) #Number of routes to be sent
    routes = Array.new(no_of_route_statements)
    no_of_route_statements.times {|route| routes << ask("Enter Route - #{route}: ") } #routes accepted
  	Simulate.with_inputs_to_destination rules, default_destination , routes.compact 
  rescue => e 
  	p e.message
  end
  end

  end
end