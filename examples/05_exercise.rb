require 'byebug'
require 'bigdecimal'

# find the problem
def run
  param1 = 0.1
  param2 = 0.57
  if param1 + param2 == 0.67
    puts 'all fine'
  else
    puts "are you kidding me?"
  end
end

run
