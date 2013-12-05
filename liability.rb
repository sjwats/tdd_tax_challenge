#Liability must expose three properties: employee, amount_due and amount_owed.
#The employee attribute should be an instance of the Employee class.
#The amount_due represents taxes that must be paid by the employee.
#The amount_owed represents the refund.

class Liability
  attr_reader :employee, :amount_due, :amount_owed

  def intialize(employee)
    @employee = employee
    @amount_due = employee['amount_due']
    @amount_owed = employee['amount_owed']

  end



end
