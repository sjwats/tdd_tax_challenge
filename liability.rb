#Liability must expose three properties: employee, amount_due and amount_owed.
#The employee attribute should be an instance of the Employee class.
#The amount_due represents taxes that must be paid by the employee.
#The amount_owed represents the refund.
require_relative 'employee'
require_relative 'tax_calculator'

class Liability #used as a "Value Object" <--Google it
  attr_reader :employee, :amount_due, :amount_owed
  #allows you to access or "Call" these variables like methods
  #outside of the

  def initialize(employee, amount_due, amount_owed)
    @employee = employee
    @amount_due = amount_due
    @amount_owed = amount_owed
  end




end
