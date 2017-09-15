#Cli Controller
class CryptoCurrency::CLI

  def call
    puts "Welcome to the Cryptocurrency Dashboard"
    list
    menu
  end

  def menu
    puts "Select the currency name to see the current price"
    puts ""
    input = gets.strip.to_i
    if input.between?(1,12)
      crypto.each do |currency|
        if input == 11
          puts currency_list
          menu
        elsif input == 12
          puts "Good Bye!"
        else
          puts "#{currency.name[input - 1]}: #{currency.price[input - 1]} - #{currency.marketcap[input - 1]}"
          menu
        end
      end
    else
      puts "Invalid input please enter number between 1 - 12"
      menu
    end
  end

  def crypto
    @lists = CryptoCurrency::Currency_price.all
  end

  def list
    puts "Enter 1 - 11 to see currency price or 12 to exit"
    puts "1. Bitcoin"
    puts "2. Ethereum"
    puts "3. Ripple"
    puts "4. Bitcoin Cash"
    puts "5. Litecoin"
    puts "6. Dash"
    puts "7. NEM"
    puts "8. Monero"
    puts "9. IOTA"
    puts "10. Ethereum Classic"
    puts "11. List"
    puts "12. Exit"
  end

  def currency_list
    crypto.each.with_index(1) do |data, index|
      puts "--CURRENCY NAME -- PRICE  ----  MARKETCAP ----- "
      puts "#{index}.  #{data.name[0]}:   #{data.price[0]}, #{data.marketcap[0]}"
      puts "#{index + 1}. #{data.name[1]}: #{data.price[1]}, #{data.marketcap[1]}"
      puts "#{index + 2}. #{data.name[2]}: #{data.price[2]}, #{data.marketcap[2]}"
      puts "#{index + 3}. #{data.name[3]}: #{data.price[3]}, #{data.marketcap[3]}"
      puts "#{index + 4}. #{data.name[4]}: #{data.price[4]}, #{data.marketcap[4]}"
      puts "#{index + 5}. #{data.name[5]}: #{data.price[5]}, #{data.marketcap[5]}"
      puts "#{index + 6}. #{data.name[6]}: #{data.price[6]}, #{data.marketcap[6]}"
      puts "#{index + 7}. #{data.name[7]}: #{data.price[7]}, #{data.marketcap[7]}"
      puts "#{index + 8}. #{data.name[8]}: #{data.price[8]}, #{data.marketcap[8]}"
      puts "#{index + 9}. #{data.name[9]}: #{data.price[9]}, #{data.marketcap[9]}"
    end
  end

  def bitcoin
    crypto.each.with_index(1) do |data, index|
      puts "--CURRENCY NAME -- PRICE  ----  MARKETCAP ----- "
      puts "#{index}. #{data.name[0]}  |   #{data.price[0]}  |  #{data.marketcap[0]}"
      puts ""
        menu
     end
  end

  def ethereum
    crypto.each.with_index(1)do |data, index|
        puts "--CURRENCY NAME -- PRICE  ----  MARKETCAP ----- "
        puts " #{index}. #{data.name[1]}   |  #{data.price[1]}  |  #{data.marketcap[1]}"
        puts ""
        menu
     end
  end

  def bitcoin_cash
    crypto.each.with_index(1) do |data, index|
      puts "--CURRENCY NAME --   PRICE  ----  MARKETCAP ----- "
      puts "#{index}. #{data.name[2]}   |  #{data.price[2]}  |  #{data.marketcap[2]}"
      puts ""
        menu
     end
  end

  def ripple
    crypto.each.with_index(1) do |data, index|
      puts "--CURRENCY NAME --   PRICE  ----  MARKETCAP ----- "
      puts "#{index}. #{data.name[3]}   |  #{data.price[3]}  |  #{data.marketcap[3]}"
      puts ""
        menu
     end
  end



end
