class WildflowerEvents::Event

	attr_accessor :name

	@@all = ["yoga", "gardening", "walk with naturalist"]
	
	def initialize(name)
		@name = name
	end
	
	def self.all
		WildflowerEvents::Scraper.scrape_events if @@all.empty? 
		@@all
	end

end