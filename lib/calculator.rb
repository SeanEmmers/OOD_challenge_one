require_relative 'printer'

class Calculator

  DEFEAULT_RESULT = 0 
  attr_reader :answer

  def initialize
  @result = DEFEAULT_RESULT
  @answer = Printer.new
  end

  def add(number_1, number_2)
    @result = number_1 + number_2
  end

  def subtract(number_1, number_2)
  @result = number_1 - number_2
  end

  def print_answer
    answer.print_answer(@result)
  end

end

# Refactor the methods in the Calculator example into two classes 
# as you see fit.