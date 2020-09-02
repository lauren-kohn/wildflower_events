class WildflowerEvents::Scraper 

	def self.scrape_events
		site = "https://www.wildflower.org/events/list?tribe_paged=1&tribe_event_display=list&tribe-bar-date=2020-08-23&tribe-bar-search=september"
		# check the website to see if you can edit it down to reflect how it is before the search is conducted
		doc = Nokogiri::HTML(open(site))
		
		things = doc.css("div.tribe-events-loop div.type-tribe_events")
		
		things.each do |thing|
			detail_one = thing.css("h3 a").text
			detail_two = thing.css(".tribe-event-date-start").text
			detail_three = thing.css(".ticket-cost").text.strip
			puts detail_one, detail_two, detail_three, ""
		end
	end

end