class BankAccount
  attr_reader :account_holder, :balance
  
  def initialize(account_holder, initial_balance)
    @account_holder = account_holder
    @balance = initial_balance >= 0 ? initial_balance : 0
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def withdraw(amount)
    if amount > @balance
      puts "残高不足です"
    else
      @balance -= amount
    end
  end
  
  def display_balance
    puts "現在の残高は #{@balance} 円です"
  end
end
  