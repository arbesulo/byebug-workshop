require 'byebug'

# use `display idx` to see the value of idx
# use `display` to see the current list. Note that as idx is not defined yet, so it won't display any value for it yet.
# use `break 25` to set a breakpoint on line 25
# note that `break 25 if idx.modulo(3) == 0` does not work, as idx is not defined on this point of execution
# use `condition idx.modulo(3) == 0`
# use `info breakpoints` to see the current breakpoints
# use `delete 1` to delete the breakpoint
# use `break Example3.some_method` or `break Example3#some_method`
# note that if the class method and the instance method are called the same, it will stop on both, whatever the command
# we used
class Example3
  def self.some_method
    puts "the class method"
  end

  def some_method
    puts 'this is the instance'
  end

  def run
    debugger
    (1..10).each do |idx|
      puts idx
    end
    some_method
    self.class.some_method
  end
end

Example3.new.run
