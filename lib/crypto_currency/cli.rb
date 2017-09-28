#Cli Controller
class CryptoCurrency::CLI

  def call
    puts "Welcome to the Cryptocurrency Dashboard"
    CryptoCurrency::Currency_price.scraper_currecies
    list
    menu
  end

  def menu
    puts "Select the currency name to see the current price"
    puts ""
    input = gets.strip
    if input == "list"
      currency_list
    elsif input == "exit"
      puts "Good Bye!"
    elsif input == "filter"
      puts "Enter a price you would like to filter currencies for: "
      input = gets.strip
      currencies = CryptoCurrency::Currency_price.price_less_than(input.to_i)
      currencies.each do |currency|
           puts "#{currency.name}: $#{currency.price}, #{currency.marketcap}"
           menu
      end
    elsif input.to_i.between?(1,10)
      currency = CryptoCurrency::Currency_price.all[input - 1]
      puts "#{currency.name}: #{currency.price}, #{currency.marketcap}"
      menu
    else
      puts "Invalid input please enter number between 1 - 10, exit, list or filter"
      menu
    end
  end



  def list
    puts "Enter 1 - 11 to see currency price or 12 to exit"
    puts "1. Bitcoin"
    puts "2. Ethereum"
    puts "3. Ripple"
    puts "4. Bitcoin Cash"
    puts "5. Litecoin"
    puts "6. Dash"
    puts "7. NEW"
    puts "8. Monero"
    puts "9. IOTA"
    puts "10. Ethereum Classic"
    puts "11. Type list to see all currency prices"
    puts "12. Type exit to exit"
    puts "13. Type filter to filter by price"
  end

  def currency_list
    CryptoCurrency::Currency_price.all.each.with_index(1) do |data, index|
      puts "--CURRENCY NAME -- PRICE -- MARKETCAP --"
      puts "#{index}.  #{data.name}:     #{data.price}, #{data.marketcap}"
    end
    menu
  end
end
