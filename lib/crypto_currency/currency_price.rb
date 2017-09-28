require 'pry'
class CryptoCurrency::Currency_price
  attr_accessor :name, :price, :marketcap

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end


   def self.scraper_currecies
     doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
     doc.css('tr')[1..10].each do |curr|
       currency = self.new #initialize new currency once
       currency.name = curr.css('.currency-name').text.strip
       currency.price = curr.css('td.no-wrap a.price').text.delete("\$")
       currency.marketcap = curr.css('.market-cap').text.strip
     end
   end

   def self.price_less_than(price)
     all.select do |currency|
       currency.price.to_i <= price
     end
   end
end
