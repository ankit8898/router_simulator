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
  	count = ask("Number of rules: ",Integer) 
  	arr  ||= Array.new
  	count.times { |i| arr << new }
  	rules = Helper.take_inputs arr
    default_destination = ask("Default destination: ")
    no_of_route_statements = ask("Number of route statements: ",Integer) 
    routes = Array.new(no_of_route_statements)
    no_of_route_statements.times {|route| routes << ask("Enter Route - #{route}: ") }
  	Simulate.with_inputs rules, default_destination , routes.compact
  rescue => e 
  	p e.message
  end
  end

  end
end