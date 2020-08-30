class WildflowerEvents::CLI

	def call
		puts "Welcome to the Wildflower Events app! Please enter a search term to find events."
		puts "Consider an upcoming month name or a type of activity, such as yoga or gardening."
		get_user_input
		# get_events(input) (scraper class)
		list_events 
		select_from_list
		# get_event_detail (scraper class)
		# present_details
	end
	
	def get_user_input 
	  @user_search = gets.strip
		# this info will be used for the scraper
	end
	
	def list_events
		# info from scraper
		@events = ["yoga", "gardening", "walk with naturalist"]
		puts "Please select a number from the list."
		@events.each_with_index do |event, index|
			puts "#{index + 1}. #{event}"
		end
	end 
	
	def select_from_list
		@selected_event = gets.strip
	end
	
	def present_details 
		# puts event_name
		# puts event_details
	end
		# add options to repeat or exit

end