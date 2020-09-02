require_relative "./wildflower_events/version"
require_relative "./wildflower_events/cli"
require_relative "./wildflower_events/event"
require_relative "./wildflower_events/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'


module WildflowerEvents
  class Error < StandardError; end
  
end
