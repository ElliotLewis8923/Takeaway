require 'takeaway'

describe Takeaway do 

	it 'has a menu' do
		menu = double('Menu')
		takeaway = Takeaway.new(menu)
		expect(takeaway.menu).not_to eq nil

	end

	
end