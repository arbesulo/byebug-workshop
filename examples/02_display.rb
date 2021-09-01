require 'byebug'

# use `display idx` to see the values that idx takes
# use `display foo` to see the values that idx takes
# use `display` to see the current display expressions
# use `undisplay <number>` to remove a displayed expression
def run
  foo = "some text"
  (1..3).each do |idx|
    debugger
    idx
  end
end

run
