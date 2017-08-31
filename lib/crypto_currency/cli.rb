#Cli Controller
class CryptoCurrency::CLI

  def call
    puts "Welcome to the Cryptocurrency Dashboard"
    list
  end

  def menu
      puts "Select the currency name to see the current price"
      puts " Type 1 for Bitcoin, 2 for Ethereum or 3 for Bitcoin Cash"
      input = ""
      input = gets.strip
      if input == "1"
        puts bitcoin
      elsif input == "2"
        puts ethereum
      elsif input == "3"
        puts bitcoin_cash
      elsif input == "list"
        list
      elsif input == "exit"
        puts "Good Bye!"
      else
      puts  "Invalid selection"
      menu
      end
  end

  def list #option prompt
    puts <<~DOC
    1. "Bitcoin"
    2. "Ethereum"
    3. "Bitcoin cash"
    DOC
    menu
    # @currency_price = CryptoCurrency::Currency_price.all
  end

  def bitcoin
    @bitcoin_price =  4078.43
    puts "Bitcoin current price #{@bitcoin_price}"
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
