require 'rspec'
require_relative 'employee'

  describe Employee do
    it 'instantiate class with all data in csv file' do
      expect(Employee.new(0).convert).to eql(32)
    end
  end

#tests an Employee class to represent each employee in your dataset.
#Your tests must verify that you can instantiate your
#class when all expected data is present as well as handle
#the cases where some are missing.
