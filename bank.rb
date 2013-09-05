class BankAccount
    def initialize(first, last, balance, debt)
        @first_name = first
        @last_name = last
        @name = "#{@first_name} #{@last_name}"
        @balance = balance
        @credit_card_debt = debt
    end
    def to_s
        puts "#{@name} has a balance of $#{@balance} and owes $#{@credit_card_debt}."
    end
    def deposit(deposit)
        @balance += deposit
        puts "#{@name} now has a balance of $#{@balance}."
    end
    def withdraw(withdraw)
        @balance -= withdraw
        puts "#{@name} now has a balance of $#{@balance}."
    end
    def use_credit_card(cost)
        @credit_card_debt += cost
        puts "#{@name} now owes $#{@credit_card_debt}."
    end
    def pay_bill
        if @balance > @credit_card_debt
            @balance -= @credit_card_debt
            puts "#{@name} paid off $#{@credit_card_debt} of credit card debt. $#{@balance} is left in #{@first_name}'s account."
            @credit_card_debt = 0
        else
            @balance -= 10
            puts "Invalid transaction. There is a $10 fee for attempting to withdraw more money than is available in an account. #{@name} now has $#{@balance} left."
        end
    end
    def add_monthly_interest
        @credit_card_debt *= 1.015
        @balance *= 1.003
        puts "#{@name}'s account is now at $#{@balance} with $#{@credit_card_debt} of debt."
    end
end
