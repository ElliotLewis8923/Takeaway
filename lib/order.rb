class Order

	attr_accessor :person, :dishes

	def initialize(person)
		@person = person
		@dishes = {}
	end

	def add_dish(dish)
		@dishes[dish] ? @dishes[dish] += 1 : @dishes[dish] = 1
	end

end