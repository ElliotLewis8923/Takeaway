require 'menu'

describe Menu do 

	let(:dish1) { double :dish 					 }
	let(:dish2) { double :dish 					 }	
	let(:dish3) { double :dish 					 }
	let(:menu)  { Menu.new(dish1, dish2) }

	it 'is initialised with an optional quantity of dishes' do
		expect(menu.dishes).to eq [dish1, dish2]
	end

	it 'can append dishes' do
		menu.dishes << dish3
		expect(menu.dishes).to eq [dish1, dish2, dish3]
	end

end