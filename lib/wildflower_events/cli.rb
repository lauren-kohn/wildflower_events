class WildflowerEvents::CLI

	def call
		puts "\nWelcome to the Wildflower Events app! Please enter a search term to find events.\n"
		puts "Consider an upcoming month name or a type of activity, such as yoga or gardening."
		get_user_search_term
		get_events#(input) (scraper class)
		list_events 
		select_from_list
		# get_event_detail (scraper class)
		# present_details_for(event) - included in selected_from_list
	end
	
	def get_user_search_term 
	  @search_term = gets.strip
		# this info will be used for the scraper
	end
	
	def get_events#(input)
		#WildflowerEvents::Event.new("yoga")
		#WildflowerEvents::Event.new("gardening")
		#WildflowerEvents::Event.new("walk with naturalist")
		@events = WildflowerEvents::Event.all
		binding.pry
	end 
	
	def list_events
		# info from scraper
		puts "Please select a number from the list."
		@events.each.with_index(1) do |event, index|
			# refactored from #each_with_index to allow for argument that will adjust array element number to desired index output
			puts "#{index}. #{event}"
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
		puts "\nHere are the details for your #{@events[event.to_i - 1]}."
		puts "\nevent_name"
		puts "\nevent_details"
		puts "\nEnjoy!"
	end
		# add options to repeat or exit

end