require 'active_record'
require './lib/person'

database_configuration = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configuration["development"]
ActiveRecord::Base.establish_connection(development_configuration)

def welcome
  puts "Welcome to Family Tree"
  menu
end

def menu
  choice = nil
    until choice == 'e'
      puts "Press 'a' to add a person, 'v' to view relationships."
      puts "Press 'e' to exit"
      choice = gets.chomp
      case choice
      when 'a'
        add
      when 'v'
        view
      when 'e'
        puts "Good-bye!"
      else
        puts "Sorry, that wasn't a valid option."
      end
    end
  end

def add
  puts "Please enter your first name"
  first_name = gets.chomp
  puts "Enter family name"
  family_name = gets.chomp
  person_name = Person.new(:first_name => first_name, :family_name => family_name)
    if person_name.save
      puts "#{person_name} has been added to Family Tree"
    else
      puts "Please enter a valid name"
  end
end

def add_mother
  puts "Enter your mother's first name."
  mother_first_name = gets.chomp
  puts "Enter your mother's family name."
  mother_family_name = gets.chomp
  mother_name = Person.new(:first_name => mother_first_name, :family_name => mother_family_name)

  # def assign_mother
  #   variable = Person.find(id) = []
  #   variable.mother
  #
  # Person.all.each do |x|
  #   if variable.id = variable.mother

end

# def view
#   mom = person_name.mother
#   puts mom.first_name
# end

# def children
# end
welcome
