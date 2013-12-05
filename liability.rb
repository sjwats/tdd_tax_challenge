#Liability must expose three properties: employee, amount_due and amount_owed.
#The employee attribute should be an instance of the Employee class.
#The amount_due represents taxes that must be paid by the employee.
#The amount_owed represents the refund.
require_relative 'employee'

class Liability < Employee
  attr_reader :employee_instance, :amount_due, :amount_owed

  def intialize(employee_instance)
    @employee_instance = employee_instance
    @amount_due = employee_instance['amount_due']
    @amount_owed = employee_instance['amount_owed']
  end



end
