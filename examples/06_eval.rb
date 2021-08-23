require 'byebug'

# press `c` to see the variable content and watch your program "continuing" and exiting instead of showing the value
# use `eval c` to see variable value. Unfortunately this is undocumented

def run
  c = 10
  debugger
end

run
