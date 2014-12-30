require 'order'

describe Order do

	let(:order)  { Order.new(person)             			   }
	let(:person) { double :person                			   }
	let(:dish1)  { double :dish                  			   }
	let(:dish2)  { double :dish                  			   }
	let(:dish3)  { double :dish                 			   }
	let(:menu)   { double :menu, dishes: [dish1, dish2, dish3] }

	it 'is initialized with a person' do
		expect(order.person).to eq person
	end

	it 'can store a dish from a menu' do
		order.dishes << menu.dishes[0]
		expect(order.dishes).to eq [dish1]
	end

end