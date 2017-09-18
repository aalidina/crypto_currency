class CryptoCurrency::Currency_price
  attr_accessor :name, :price, :marketcap, :url


  def self.all
    self.scarpe_coinmarketcap
  end

  def self.scarpe_coinmarketcap
    currencies = []
    currencies << self.scraper_currecies

    currencies # returns a array with name, price and marketcap data
  end


   def self.scraper_currecies
     doc = Nokogiri::HTML(open("https://coinmarketcap.com"))

     currency = self.new #initialize new currency
     currency.name = doc.css("td.currency-name a").map{|name| name.text}.first(10) # returning an array instead of a string
     currency.price = doc.css("td.no-wrap a.price").map{|price| price.text}.first(10)
     currency.marketcap = doc.css("td.market-cap").map{|marketcap| marketcap.text.strip}.first(10)

     currency
   end
end
