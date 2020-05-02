# Create Account class with name and balance attributes that are readable. 
# The initialize method takes two parameteres, name and balance. Balance parameter defaults to 100. Store parameters in instance variables.
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
# private methods pin and pin_error. 
# pin takes no arguments and sets an intance variable, @pin, equal to PIN number 1234. 
# pin_error simply returns the string "Access denied: incorrect PIN."
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
  
# public methods
  public 
# display_balance method takes a single parameter, pin_number.  
# display_balance checks whether the pin_number is equal to pin (the result of calling the private pin method). 
# If it is, disply_balance should puts "Balance: $#{@balance}." If not, puts pin_error.
  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
# Deposit method takes two parameters, pin_number and amount. 
# If pin_number matches pin, subtract the amount from the balance and puts "Deposited #{amount}. New balance: $#{@balance}." Otherwise, it should puts pin_error.
  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "Deposited #{amount}. New balance: $#{@balance}."
    else 
      puts pin_error
    end
  end

# Withdraw method takes two parameters, pin_number and amount. 
# If pin_number matches pin, subtract the amount from the balance and puts "Withdrew #{amount}. New balance: $#{@balance}." Otherwise, it should puts pin_error.
  def withdraw(pin_number, amount)
    if pin_number == pin
      if amount > @balance
        puts "Insufficient funds for withdrawal."
      else
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      end
    else
        puts pin_error
    end
  end   
   
end
# Create instance of Account called checking_account
checking_account = Account.new("Christina",0.50)
checking_account.deposit(11, 0.50)
checking_account.display_balance(1234)
checking_account.deposit(1234, 0.50)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 5)
