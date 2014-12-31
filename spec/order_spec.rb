require 'order'

describe Order do

	let(:order)  { Order.new(person)             			   	 }
	let(:person) { double :person                			  			 }
	let(:dish1)  { double :dish                  			  			 }
	let(:dish2)  { double :dish                  			  			 }
	let(:dish3)  { double :dish                 			   			 }
	let(:menu)   { double :menu, dishes: [dish1, dish2, dish3] }

	it 'is initialised with a person' do
		expect(order.person).to eq person
	end

	it 'can store a dish from a menu' do
		order.add_dish(menu.dishes[0])
		expect(order.dishes).to eq dish1 => 1
	end

	it 'records the quantity of each dish' do
		order.add_dish(menu.dishes[0])
		order.add_dish(menu.dishes[0])
		expect(order.dishes).to eq dish1 => 2
	end

	it 'has a user submitted total' do
		order.total = 12
		expect(order.total).to eq 12
	end

end