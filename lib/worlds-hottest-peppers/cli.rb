class WorldsHottestPeppers::CLI

  def call
    WorldsHottestPeppers::Scraper.new.make_peppers
    puts "Hello and welcome to the 50 hottest peppers in the world"
    start
  end

  def start
    puts ""
    puts "Which peppers would you like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
    input = gets.strip.to_i

    print_peppers(input)

    puts ""
    puts "What pepper would you like more information on?"
    input = gets.strip

    restaurant = WorldsHottestPeppers::Peppers.find(input.to_i)

    print_pepper(pepper)

    puts ""
    puts "Would you like to see another pepper? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    else
      puts ""
      puts "Thankyou! Have a great day!"
      exit
    end
  end

  def print_pepper(pepper)
    puts ""
    puts "----------- #{pepper.name} - #{pepper.position} -----------"
    puts ""
    puts "Name:           #{pepper.name}"
    puts "Position:          #{pepper.position}"
    puts "Scoville_units:     #{pepper.scoville_units}"
    puts "Website:            #{pepper.website_url}"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{pepper.description}"
    puts ""
  end

  def print_peppers(from_number)
    puts ""
    puts "---------- Pepper #{from_number} - #{from_number+9} ----------"
    puts ""
    WorldsHottestPeppers::Pepper.all[from_number-1, 10].each.with_index(from_number) do |restaurant, index|
      puts "#{index}. #{pepper.name}"
    end
  end
end
