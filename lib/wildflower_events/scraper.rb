class WildflowerEvents::Scraper 

	def self.scrape_events(input)
		# take search term from user
		# append search term to website link (interpolated text)
		# do the scrape
		# iterate over scraped data and create events with attributes like event.name, event.date, event.cost
		
		site = "https://www.wildflower.org/events/list?tribe_paged=1&tribe_event_display=lis&tribe-bar-search=#{input}"
		# check the website to see if you can edit it down to reflect how it is before the search is conducted
		doc = Nokogiri::HTML(open(site))
		
		events = doc.css("div.tribe-events-loop div.type-tribe_events")
		
		events.each do |event|
			name = event.css("h3 a").text
			date = event.css(".tribe-event-date-start").text
			cost = event.css(".ticket-cost").text.strip
			# puts name, date, cost, ""
			WildflowerEvents::Event.new(name, date, cost)
		end
	end

end