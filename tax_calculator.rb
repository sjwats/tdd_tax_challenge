#TaxCalculator class' purpose is to determine taxes owed or refunds due.
class TaxCalculator
#in a class method, can't use @INSTANCE VARIABLES because you aren't calling
#the method on an INSTANCE of the class object, you are calling it on the CLASS
#itself so you have to create the local variables within the Class method.
  def self.liability(employee)
    annual_income = employee.annual_income.to_f
    amount_paid = employee.tax_paid.to_f
    tax_rate = employee.tax_rate.to_f
    amount_owed = 0
    amount_due = annual_income * (tax_rate/100)
    amount_owed = (amount_paid-amount_due).to_i
    Liability.new(employee, amount_due, amount_owed) #Allows us to return a value object
                                                    #when running the class method TaxCalculator.liability
  end
end
