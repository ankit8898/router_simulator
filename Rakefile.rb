task :default => [:router]

task :router do
  ruby "router_simulator.rb"
end