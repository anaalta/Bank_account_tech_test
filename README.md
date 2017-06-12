# Bank_account_tech_test

Installation:
```
$ git clone https://github.com/anaalta/Bank_account_tech_test.git
$ cd Bank_account_tech_test
$ bundle
```

Tests:
```
$ rspec
```
Test coverage: 39 / 43 LOC (90.7%) covered (simplecov gem)

Limitations: since no database is required, the assumption is that the user is already logged in (no user functionality, no database). In terms of the account class, it assumes that if you withdraw on balance 0, you will just get a negative balance.

On irb:
```
require ('./lib/account')
account = Account.new
account.deposit(1000) #for adding 1000 to the account
account.withdraw(700) #for withdrawing 700 from the account
account.print_statement #for printing the statement
```
