# frozen_string_literal: true

require_relative "calc_ruby_test_gem/version"

module CalcRubyTestGem
  class Error < StandardError; 
  end  
  
  class UnsupportedOperation < StandardError
  end
  
  ALLOWED_OPERATIONS = ['+', '-', '/', '*'].freeze
    def self.calculate(first_operand, second_operand, operation)
      raise ArgumentError if first_operand.class == String || second_operand.class == String
      raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
      
      begin
      "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
      puts "Test"
      rescue ZeroDivisionError => e
        "Division by zero is not allowed."
      end
    end
end
