require 'rspec'
require_relative 'liability'
require_relative 'employee'

employee = Employee.new({'last_name' =>"Smith", 'first_name' => "Johnny", 'annual_income' => 120000, 'tax_paid' => 28000, 'tax_rate' => 38 })

liability = Liability.new(employee, 5000, 10000)

  describe Liability do

    it 'the employee property must be exposed' do
      expect(liability.methods.include?(:employee)).to be true
    end

    it 'the amount_due property must be exposed' do
      expect(liability.methods.include?(:amount_due)).to be true
    end

    it 'the amount_owed property must be exposed' do
      expect(liability.methods.include?(:amount_owed)).to be true
    end

    it 'the employee attribute should be an instance of the Employee class' do
      expect(liability).to respond_to (:employee)
    end
  end


#tests the Liability class. Liability must expose
#three properties: employee, amount_due and amount_owed.
#The employee attribute should be an instance of the
#Employee class. The amount_due represents taxes that must be
#paid by the employee. The amount_owed represents the refund.
