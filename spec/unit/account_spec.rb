require './lib/account'

describe Account do
  subject(:account) { described_class.new }

  it 'can receive a deposit' do
    account.deposit(1000);
    expect(account.balance).to eq (1000)
  end

end
