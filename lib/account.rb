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
    @history << {{@date => +sum} => @balance}
  end

  def withdraw(sum)
    @balance = @balance - sum
    @date = Date.today
    @history << {{@date => -sum} => @balance}
  end

  def print_statement
    @history.each do |element|
      element.each do |datesAndAmounts, balance|
        datesAndAmounts.each do |date, amount|
         puts '|Date:' + date.strftime("%d/%m/%Y") + '| Amount: ' + amount.to_s + '| Balance:' + balance.to_s+ '|'
        end
      end
    end
  end

end
