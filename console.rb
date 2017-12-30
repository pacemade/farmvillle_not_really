require_relative 'farm'


class Farm

  attr_reader :fields

  @@fields = []


  def initialize
    @food = 0
  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.chomp
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts "field -> adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status -> displays some information about the farm"
    puts "relax -> provides lovely descriptions of your fields"
    puts "exit -> exits the program"
  end

  def call_option(user_selected)
    case user_selected
      when "field" then add_field
      when "harvest" then harvest
      when "status" then status
      when "relax" then relax
      when "exit" then abort('Goodbye')
    end
  end

  def add_field
    puts "What kind of field are you adding?"
    type = gets.chomp.downcase

    puts "How many hectares you thinking?"
    hectares = gets.to_i

    new_field = Field.new(type, hectares)

    @@fields << new_field

    puts "Added #{type} at #{hectares} hectares!"
  end

  def harvest
    @@fields.each do |field|
      @food += field.hectares
    end
    puts "You have #{@food} food!"
  end

  def status
    @@fields.each do |field|
      puts "You have a #{field.type} field at #{field.hectares} hectares"
    end
      puts "You have #{@food} food!"
  end

  def relax
    quotes = ["Just chillin", "Takin a break", "It's whatevs bro"]
    sample = @@fields.sample
    puts "#{quotes.sample}, rolling in the #{sample.hectares} hectares of my #{sample.type} field"
  end

end

farm = Farm.new

farm.main_menu
