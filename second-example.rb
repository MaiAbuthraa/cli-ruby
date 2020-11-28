# Run: ruby second-example.rb -h

def menu(option)
  case option
  when "-h"
    puts "This is the help menu."
    puts "-v | get vesrion"
    puts "-s | print setting "
  when "-v"
    puts "1.2.3.4"
  when "-s"
    puts "db: database name"
    puts "host: localhost"
  end
end

@option = {}

ARGV.each{|option| menu(option) }
