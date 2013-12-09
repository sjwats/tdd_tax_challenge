require 'rspec'
require_relative 'tax_calculator'
require_relative 'employee'
require_relative 'Liability'
require_relative 'taxes_main'

employee = Employee.new({})
tax_calculator = TaxCalculator.new

describe TaxCalculator do
  it 'it should have a liability Class method' do
    expect(TaxCalculator.methods.include?(:liability)).to be true
  end

  it 'the liability Class method should receive an instance of an Employee class' do
    expect(TaxCalculator.liability(employee)).to respond_to :employee
  end

  it 'a liability Class method requires an instance of Employee class to calculate amount due' do
    expect(TaxCalculator.liability(employee)).to respond_to :amount_due
  end

  it 'a liability Class method requires an instance of Employee class to calculate amount owed' do
    expect(TaxCalculator.liability(employee)).to respond_to :amount_owed
  end

  it 'a liability Class method must return an instance of the Liability class' do
    expect(TaxCalculator.liability(employee).class).to eql(Liability)
  end
end


#tests a TaxCalculator class who's purpose is to determine
#taxes owed or refunds due. TaxCalculator must implement a
#liability class method that receives an instance of an Employee
#class in order to calculate taxes owed or refund due. The method
#must return an instance of the Liability class.
