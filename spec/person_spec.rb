require 'person'

describe Person do

	it 'is initialized with a name and phone number' do
		person = Person.new('Gideon', '+447896946691')
		expect(person.name).to eq 'Gideon'
		expect(person.nunber).to eq '+447896946691'
	end

end