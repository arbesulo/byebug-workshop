require 'byebug'

# use `display idx` to see the values that idx takes
# use `display` to see the current display expression
# use `undisplay <number>` to remove the displayed expression
def run
  (1..3).each do |idx|
    debugger
    puts idx
  end
end

run
