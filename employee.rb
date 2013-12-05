#Employee class to represent each employee in your dataset.
#Your tests must verify that you can instantiate your class
#when all expected data is present as well as handle the cases
#where some are missing.

class Employee
  attr_reader :last_name, :first_name, :annual_income, :tax_paid, :tax_rate
  def intialize(attributes)
    @last_name = attributes['last_name'] ||=['Last Name']
    @first_name = attributes['first_name'] ||=['First Name']
    @annual_income = attributes['annual_income'] ||= 0
    @tax_paid = attributes['tax_paid'] ||= 0
    @tax_rate = attributes['tax_rate'] ||= 0
  end


end
