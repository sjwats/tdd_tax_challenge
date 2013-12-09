require 'rspec'
require_relative 'employee'

  describe Employee do
    it 'Employee class object should instantiate when missing a first name argument' do
      expect(Employee.new({}).first_name).to eql("[First Name]")
    end

    it 'Employee class object should instantiate when first name argument is passed in' do
      expect(Employee.new({'first_name' => "Johnny"}).first_name).to eql("Johnny")
    end

    it 'Employee class object should instantiate when missing a last name argument' do
      expect(Employee.new({}).last_name).to eql("[Last Name]")
    end

    it 'Employee class object should instantiate when last name argument is passed in' do
      expect(Employee.new({'last_name' => "Smith"}).last_name).to eql("Smith")
    end

    it 'Employee class object should instantiate when missing an annual income argument' do
      expect(Employee.new({}).annual_income).to eql(0.to_f)
    end

    it 'Employee class object should instantiate when annual income argument is passed in' do
      expect(Employee.new({'annual_income' => 30000}).annual_income).to eql(30000.to_f)
    end

    it 'Employee class object should instantiate when missing a tax paid argument' do
      expect(Employee.new({}).tax_paid).to eql(0.to_f)
    end

    it 'Employee class object should instantiate when tax paid argument is passed in' do
      expect(Employee.new({'tax_paid' => 15000}).tax_paid).to eql(15000.to_f)
    end

    it 'Employee class object should instantiate when missing tax paid argument is passed in' do
      expect(Employee.new({}).tax_paid).to eql(0.to_f)
    end

    it 'Employee class object should instantiate when tax rate argument is passed in' do
      expect(Employee.new({'tax_rate' => 38}).tax_rate).to eql(38.to_f)
    end
  end

#tests an Employee class to represent each employee in your dataset.
#Your tests must verify that you can instantiate your
#class when all expected data is present as well as handle
#the cases where some are missing.
