#TaxCalculator class' purpose is to determine taxes owed or refunds due.
class TaxCalculator

  def initialize(employee)
    @employee = employee
  end

  def liability
    amount_paid = 0
    amount_owed = 0
    amount_paid = @employee.tax_paid.to_f
    amount_due = @employee.annual_income.to_f * @employee.tax_rate.to_f/100
    amount_paid > amount_due ? amount_owed = (amount_paid-amount_due) : amount_owed = (amount_paid-amount_due)
    amount_owed
    binding.pry

  end


end
