require 'menu'

describe Menu do 

	let(:dish1) { double :dish }
	let(:dish2) { double :dish }	
	let(:dish3) { double :dish }

	it 'is initialised with an optional quantity of dishes' do
		menu = Menu.new(dish1, dish2, dish3)
		expect(menu.dishes).to eq [dish1, dish2, dish3]
	end

end