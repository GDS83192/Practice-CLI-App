class WorldsHottestPeppers::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.cayennediane.com/big-list-of-hot-peppers/"))
  end

  def scrape_peppers_index
    self.get_page.css("div#stacks_out")
  end

  def make_peppers
    scrape_peppers_index.each do |r|
      WorldsHottestPeppers::Pepper.new_from_index_page(r)
    end
  end
end
