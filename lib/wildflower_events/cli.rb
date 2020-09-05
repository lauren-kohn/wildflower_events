class WildflowerEvents::CLI

	def call
		puts "\nWelcome to the Wildflower Events app! Please enter a search term to find events.\n"
		puts "Consider an upcoming month name or a type of activity, such as yoga or gardening."
		get_search_term
		get_events
		list_events 
		select_from_list
	end
	
	def get_search_term 
		@search_term = gets.strip
	end
	
	def get_events
		while WildflowerEvents::Event.all.length < 1
			WildflowerEvents::Scraper.scrape_events(@search_term)
			get_search_term unless WildflowerEvents::Event.all.length > 0
		end
		@events = WildflowerEvents::Event.all
	end 
	
	def list_events
		puts "Please select a number from the list."
		@events.each.with_index(1) do |event, index|
			# refactored from #each_with_index to allow for argument that will adjust array element number to desired index output
			puts "#{index}. #{event.name}"
		end
	end 
	
	def select_from_list
		selected_event = gets.strip
		if valid(selected_event)
			present_details_for(selected_event)
		elsif selected_event == "exit"
			# exit
		else !valid(selected_event)
			puts "We couldn't find that option. Please enter your selection again."
			list_events
			select_from_list
		end
	end
	
	def valid(input)
		input.to_i <= @events.length && input.to_i > 0
	end
	
	def present_details_for(event) 
		# gets details for selected event
		puts "\nHere are the details for your #{@events[event.to_i - 1].name}."
		puts "\n#{@events[event.to_i - 1].date}"
		puts "\n#{@events[event.to_i - 1].cost}"
		puts "\nEnjoy!"
	end
		# add options to repeat or exit

end