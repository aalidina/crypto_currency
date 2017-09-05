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

      if input == "1"
        puts bitcoin
      elsif input == "list"
        puts list
      elsif input == "exit"
        puts "Good Bye!"
      else
      puts  "Invalid selection"
      menu
      end
  end

  def list
    @lists = CryptoCurrency::Currency_price.all
    @lists[0..9].each.with_index(1) do |data, index|
      # puts "#{index}. #{data.name}  #{data.price}  #{data.marketcap}"
      binding.pry
       menu
    end
  end

  def bitcoin_price
    @currency = CryptoCurrency::Currency_price.all
    @currency.each.with_index(1) do |data, index|
      if data.include?("Bitcoin")
        puts "#{index}. #{data}"
     end
   end
  end

  def ethereum
    @ethereum_price = 313.83
    puts "ethereum current price #{@ethereum_price}"
  end

  def bitcoin_cash
    @bitcoin_cash_price = 673.03
    puts "Bitcoin cash current price #{@bitcoin_cash_price}"
  end


end
