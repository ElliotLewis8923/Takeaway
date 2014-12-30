class Order

	attr_accessor :person, :dishes

	def initialize(person)
		@person = person
		@dishes = []
	end

end