require 'date'

class Account

  attr_reader :balance

   def initialize
     @balance = balance
   end

  def deposit(sum)
    @balance =+ sum
    @date = Date.today
  end

end
