class WildflowerEvents::Event

	attr_accessor :name

	@@all = ["yoga", "gardening", "walk with naturalist"]
	
	def initialize(name)
		@name = name
	end
	
	def self.all
		@@all
	end

end