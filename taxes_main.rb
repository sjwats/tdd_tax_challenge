require 'pry'
require 'csv'

require_relative 'employee'
require_relative 'tax_calculator'
require_relative 'liability'

def get_employees_tax_liability
  CSV.foreach('employee_taxes.csv', headers: true) do |row|
    employee = nil
    employee = Employee.new(row)
    liability_calc = TaxCalculator.liability(employee)
    display(liability_calc)
  end
end

def display(liabilities)
  if liabilities.amount_owed <= 0
    puts "#{liabilities.employee.first_name} #{liabilities.employee.last_name} has a tax liability of $#{(liabilities.amount_owed).abs}"
  else
    puts "#{liabilities.employee.first_name} #{liabilities.employee.last_name} will receive a refund of $#{liabilities.amount_owed}"
  end
end

get_employees_tax_liability






#Sample Output:

#Johnny Smith has a tax liability of $17,600
#Jane Doe has a tax liability of $10,200
#Liz Lemon will receive a refund of $21,000
#[First Name] Orsillio will receive a refund of $100
#Eric Schmidt has a tax liability of $1,512
