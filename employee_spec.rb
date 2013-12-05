require 'rspec'
require_relative 'employee'

  describe Employee do
    it 'instantiated Employee class object should have a first name' do
      expect(Employee.new("Johnny").first_name).to eql("Johnny")
    end

    it 'instantiated Employee class object should have a last name' do
      expect(Employee.new("Smith").last_name).to eql("Smith")
    end

    it 'Employee class object should have an annual income' do
      expect(Employee.new(120000).annual_income).to eql(120000)
    end

    it 'Employee class object should have tax paid' do
      expect(Employee.new(28000).tax_paid).to eql(28000)
    end

    it 'Employee class object should have tax rate' do
      expect(Employee.new(38).first_name).to eql(38)
    end
  end

#tests an Employee class to represent each employee in your dataset.
#Your tests must verify that you can instantiate your
#class when all expected data is present as well as handle
#the cases where some are missing.
