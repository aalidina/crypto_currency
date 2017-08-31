class CryptoCurrency::Currency_price
  attr_accessor :name, :price, :url

  # def self.all
  #   @@all || scarpe_crypto_currency #if the left hand side of the || comparison is true, there's no need to check the right hand side.
  # end

  def self.scarpe_currency_bitcoin
    main_url = "https://coinmarketcap.com"
    doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
    #currency_name = doc.search("#id-bitcoin .currency-name  a").text
    currencies = []
    doc.css("td.currency-name a").each do |currency|
      currency_name = currency.text
      currencies << currency_name
    end

    prices = []

    doc.css("td.no-wrap a.price").each do |price|
      currency_price = price.text
      prices << currency_price
    end
    #puts "#{currencies[0] + " " + prices[0]}"
    binding.pry
  end

end
#CryptoCurrency::Currency_price.scarpe_currency_bitcoin
