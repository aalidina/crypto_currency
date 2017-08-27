#Cli Controller
class CryptoCurrency::CLI

  def call
    puts "Welcome to the Cryptocurrency Dashboard"
    menu
  end

  def menu
    input = nil
    while input != "exit"
      puts "Select the current name to see the current rate"
      puts " type 1 for bitcoin, 2 for ethereum or 3 for bitcoin cash"
      input = gets.strip
      case input
      when "1"
        puts bitcoin
      when "2"
        puts ethereum
      when "3"
        puts bitcoin_cash
      when "list"
        list
      else
        "invalid selection select 1,2,3 or type list"
      end
    end
  end

  def list #option prompt
    puts "Bitcoin"
    puts "Ethereum"
    puts "Bitcoin cash"
    @currency_price = CryptoCurrency::Currency_price.now
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
