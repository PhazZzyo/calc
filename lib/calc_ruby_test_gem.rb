# frozen_string_literal: true

require_relative "calc_ruby_test_gem/version"

module CalcRubyTestGem
  class Error < StandardError; end
  
puts "Please enter your example with space between each element: "

example = gets.to_s.split

a = example[0].to_f
b = example[1].to_s
c = example[2].to_f

  case b
    when "+"        
        puts "The result is: #{a + c}"        

    when "-"        
        puts "The result is: #{a - c}"        

    when "*"        
        puts "The result is: #{a * c}"        

    when "/"        
        puts "The result is: #{a / c}"        
    else 
        puts "Sorry, you entered an invalid operator, only +, -, *, / are allowed!"
  end
end