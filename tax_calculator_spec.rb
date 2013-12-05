require 'rspec'
require_relative 'tax_calculator'

  describe TaxCalculator do
    it 'converts between fahrenheit and celsius' do
      expect(TemperatureConversion.new(0).convert).to eql(32)
    end
  end


#tests a TaxCalculator class who's purpose is to determine
#taxes owed or refunds due. TaxCalculator must implement a
#liability class method that receives an instance of an Employee
#class in order to calculate taxes owed or refund due. The method
#must return an instance of the Liability class.
