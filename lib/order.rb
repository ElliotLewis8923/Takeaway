class Order

	attr_accessor :person, :total, :dishes

	def initialize(person)
		@person = person
		@dishes = {}
	end

	def add_dish(dish)
		@dishes[dish] ? @dishes[dish] += 1 : @dishes[dish] = 1
	end

	def correct?
		memo = 0;
		@dishes.each_pair { |k, v| memo += k.price * v }
		memo == @total
	end

end