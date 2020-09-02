class WildflowerEvents::Event

	attr_accessor :name
	attr_reader :date, :cost

	@@all = ["yoga", "gardening", "walk with naturalist"]
	
	def initialize(name, date, cost)
		@name = name
		@date = date
		@cost = cost
	end
	
	def self.all
		WildflowerEvents::Scraper.scrape_events if @@all.empty? 
		@@all
	end

end