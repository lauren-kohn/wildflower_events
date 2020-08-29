class WildflowerEvents::CLI

	def call
		puts "Welcome to the Wildflower Events app! Please enter a search term to find events."
		puts "Consider an upcoming month name or a type of activity, such as yoga or gardening."
		get_user_input
		# get_events(input)
		# list_events 
		# select_from_list(input)
		# get_event_detail
		# present_details
	end
	
	def get_user_input 
	  gets.strip
	end

end