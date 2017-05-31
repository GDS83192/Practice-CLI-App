class WorldsBestRestaurants::CLI

  def call
    WorldsBestRestaurants::Scraper.new.make_restaurants
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

    restaurant = WorldsHottestPeppers::Pepper.find(input.to_i)

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
    puts "Head Chef:          #{restaurant.head_chef}"
    puts "Style of Food:      #{restaurant.food_style}"
    puts "Standout Dish:      #{restaurant.best_dish}"
    puts "Contact:            #{restaurant.contact}"
    puts "Website:            #{restaurant.website_url}"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{restaurant.description}"
    puts ""
  end

  def print_restaurants(from_number)
    puts ""
    puts "---------- Restaurants #{from_number} - #{from_number+9} ----------"
    puts ""
    WorldsBestRestaurants::Restaurant.all[from_number-1, 10].each.with_index(from_number) do |restaurant, index|
      puts "#{index}. #{restaurant.name} - #{restaurant.location}"
    end
  end

end
