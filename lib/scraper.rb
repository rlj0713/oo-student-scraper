require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_url = open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
    scraped_student = Nokogiri::HTML(index_url)
    scraped_student = scraped_student.css(".student-name").children

    index_url = open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
    scraped_location = Nokogiri::HTML(index_url)
    scraped_location = scraped_location.css(".student-location").children

    array = []
    scraped_student.each do |student|
      array << student.text.strip
      # array << ", "
    end

    array2 = []
    scraped_location.each do |location|
      array2 << location.text.strip
      # array << ", "
    end

    array  #this is an array of all names
    array2  #this is an array of all locations
    binding.pry                                     #next step, merge these arrays
    
  
      
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

