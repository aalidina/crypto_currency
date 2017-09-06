#Cli Controller
class CryptoCurrency::CLI

  def call
    puts "Welcome to the Cryptocurrency Dashboard"
    menu
  end

  def menu
      puts "Select the currency name to see the current price"
      puts " Type 1 for Bitcoin, 2 for Ethereum or 3 for Bitcoin Cash"
      input = ""
      input = gets.strip
      puts ""
      if input == "1"
        puts bitcoin
      elsif input == "2"
        puts ethereum
      elsif input == "3"
        puts bitcoin_cash
      elsif input == "list"
        puts list
        puts ""
      elsif input == "exit"
        puts "Good Bye!"
        puts ""
      else
      puts  "Invalid selection"
      menu
      puts " "
      end
  end


  def list
    @lists = CryptoCurrency::Currency_price.all
    list = []
    @lists.each.with_index do  |data, index|
      list << data
      #puts "#{index}. #{data.name}  #{data.price}  #{data.name}"
    end
  end

  def bitcoin
    @currency = CryptoCurrency::Currency_price.all
    @currency.each.with_index(1) do |data, index|
      puts "--CURRENCY NAME -- PRICE  ----  MARKETCAP ----- "
      puts "#{index}. #{data.name[0]}      #{data.price[0]}     #{data.marketcap[0]}"
      puts ""
        menu
     end
  end

  def ethereum
    @currency = CryptoCurrency::Currency_price.all
    @currency.each.with_index(1) do |data, index|
        puts "--CURRENCY NAME -- PRICE  ----  MARKETCAP ----- "
        puts " #{index}. #{data.name[1]}      #{data.price[1]}     #{data.marketcap[1]}"
        puts ""
        menu
     end
  end

  def bitcoin_cash
    @currency = CryptoCurrency::Currency_price.all
    @currency.each.with_index(1) do |data, index|
      puts "--CURRENCY NAME --   PRICE  ----  MARKETCAP ----- "
      puts "#{index}. #{data.name[2]}      #{data.price[2]}     #{data.marketcap[2]}"
      puts ""
        menu
     end
  end


end
