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
      else
        "invalid selection select 1,2,3 or type list"
      end
    end
  end

  def currency_names #option prompt
    puts "Bitcoin"
    puts "Ethereum"
    puts "Bitcoin cash"
  end

  def bitcoin
    @bitcoin_price =  4078.43
    puts "Bitcoin current price #{@bitcoin_price}"
  end

  def ethereum
    @ethereum_price = 313.83
  end

  def bitcoin_cash
    @bitcoin_cash_price = 673.03
  end
end
