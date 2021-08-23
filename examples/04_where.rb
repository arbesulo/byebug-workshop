require 'byebug'

# use `where` to see the execution backtrace
# use `up`, `down` or `frame` to switch different frames and evaluate expressions
# use `list=` after switching the current frame to see the code being evaluated
def run
  param = '5'
  method1(param)
end

def method1(param)
  other = param * 2
  method2(other)
end

def method2(other)
  puts other.modulo(2) == 0
rescue => e
  debugger
  puts "boom!"
end

run
