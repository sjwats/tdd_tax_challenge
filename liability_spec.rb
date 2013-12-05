require 'rspec'
  require_relative 'liability'

  describe Liability do
    it 'converts between fahrenheit and celsius' do
      expect(TemperatureConversion.new(0).convert).to eql(32)
    end
  end


#tests the Liability class. Liability must expose
#three properties: employee, amount_due and amount_owed.
#The employee attribute should be an instance of the
#Employee class. The amount_due represents taxes that must be
#paid by the employee. The amount_owed represents the refund.
