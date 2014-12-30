require 'order'

describe Order do

	let(:person) { double :person }
	
	it 'is initialized with a person' do
		order = Order.new(person)
	end

end