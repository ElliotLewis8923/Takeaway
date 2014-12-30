require 'order'

describe Order do

	let(:order)  { Order.new(person) }
	let(:person) { double :person    }
	let(:dish1)  { double :dish      }
	let(:menu)   { double :menu      }


	
	it 'is initialized with a person' do
		expect(order.person).to eq person
	end

	xit 'can store several dishes from a menu' do
	end

end