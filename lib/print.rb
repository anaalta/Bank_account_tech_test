require_relative 'account'
module Print
  def print_statement
    sorted = account.withdrawals+account.deposits
    sorted = sort_me.sort_by { |key, value| key }
    sorted.each {|element| element}

  end
end
