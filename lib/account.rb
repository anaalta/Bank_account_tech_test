require 'date'

class Account

  attr_reader :balance

   def initialize(balance = 0)
     @balance = balance
   end

  def deposit(sum)
    @balance = @balance + sum
    @date = Date.today
  end

  def withdraw(sum)
    @balance = @balance - sum
    @date = Date.today
  end

end
