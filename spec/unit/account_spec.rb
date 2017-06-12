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

  it 'saves the deposits and the dates in which they were made' do
    account.deposit(1000);
    account.deposit(200);
    expect(account.deposits).to eq ([{Date.today => 1000}, {Date.today => 200}])
  end

end
