class WildflowerEvents::Event

	attr_accessor :name
	attr_reader :date, :cost

	@@all = []
		
	def initialize(name, date, cost)
		@name = name
		@date = date
		@cost = cost
		@@all << self
	end
		
	def self.all
		WildflowerEvents::Scraper.scrape_events if @@all.empty? 
		@@all
	end

end