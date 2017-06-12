require 'date'

class Account

  attr_reader :balance, :history

   def initialize(balance = 0)
     @balance = balance
     @history = []
   end

  def deposit(sum)
    @balance = @balance + sum
    @date = Date.today
    @history << {@date => +sum}
  end

  def withdraw(sum)
    @balance = @balance - sum
    @date = Date.today
    @history << {@date => -sum}
  end

end
