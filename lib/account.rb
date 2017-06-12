require 'date'

class Account

  attr_reader :balance, :deposits, :withdrawals

   def initialize(balance = 0)
     @balance = balance
     @deposits = []
     @withdrawals = []
   end

  def deposit(sum)
    @balance = @balance + sum
    @date = Date.today
    @deposits << {@date => sum}
  end

  def withdraw(sum)
    @balance = @balance - sum
    @date = Date.today
    @withdrawals << {@date => sum}
  end

end
