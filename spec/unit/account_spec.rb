require './lib/account'

describe Account do
  subject(:account) { described_class.new }

  it 'can receive a deposit' do
    account.deposit(1000);
    expect(account.balance).to eq (1000)
  end

  it 'can withdraw money from the account' do
    account.deposit(1000);
    account.withdraw(600);
    expect(account.balance).to eq (400)
  end

  it 'adds up deposits to balance' do
    account.deposit(1000);
    account.deposit(500);
    expect(account.balance).to eq(1500)
  end

  it 'subtracts withdrawals from balance' do
    account.deposit(1000);
    account.withdraw(200);
    account.withdraw(200);
    expect(account.balance).to eq (600)
  end

  it 'saves the deposits and withdrawals and the dates in which they were made in a history array' do
    account.deposit(2000);
    account.withdraw(200);
    account.withdraw(300);
    expect(account.history).to eq ([{{Date.today => 2000} => 2000}, {{Date.today => -200} => 1800}, {{Date.today => -300} => 1500}])
  end

end
