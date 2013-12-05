require 'pry'
require 'csv'

require_relative 'employee'
require_relative 'tax_calculator'
require_relative 'liability'

@employees = []

CSV.foreach('employee_taxes.csv', headers: true) do |row|
  employee = nil
  employee = Employee.new(row)
  tax_calculator = TaxCalculator.new(employee)
  tax_calculator.liability
  @employees << employee

end

puts @employees





#Sample Output:

#Johnny Smith has a tax liability of $17,600
#Jane Doe has a tax liability of $10,200
#Liz Lemon will receive a refund of $21,000
#[First Name] Orsillio will receive a refund of $100
#Eric Schmidt has a tax liability of $1,512
