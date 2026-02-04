=begin
Each year, the balance of a savings account is updated based on the interest rate. The interest rate the bank gives depends on the amount of money in the accounts (its balance):

0.5% for a non-negative balance less than 1000 dollars.
1.621% for a positive balance greater than or equal to 1000 dollars and less than 5000 dollars.
2.475% for a positive balance greater than or equal to 5000 dollars.
3.213% for a negative balance (results in negative interest).
=end

module SavingsAccount
  INTEREST_RATE_LESS_THAN_1000 = 0.5
  INTEREST_RATE_LESS_THAN_5000 = 1.621
  INTEREST_RATE_GREATER_OR_EQUAL_5000 = 2.475
  INTEREST_RATE_NEGATIVE_BALANCE = 3.213

  def self.interest_rate(balance)
    if balance < 0
      INTEREST_RATE_NEGATIVE_BALANCE
    elsif balance < 1000
      INTEREST_RATE_LESS_THAN_1000
    elsif balance < 5000
      INTEREST_RATE_LESS_THAN_5000
    else
      INTEREST_RATE_GREATER_OR_EQUAL_5000
    end
  end

  def self.annual_balance_update(balance)
    rate = interest_rate(balance)
    balance + (balance * rate / 100.0)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    return 0 if current_balance >= desired_balance
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end
