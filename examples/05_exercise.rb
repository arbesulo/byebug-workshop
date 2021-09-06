require 'byebug'
require 'bigdecimal'

# run and watch the program fail.
# use byebug to determine why param1 + param2 != 0.67
# use the bigdecimal class to fix the problem (`value = BigDecimal("<the number as a string>")`)
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
