require_relative('contact.rb')
require_relative('rolodex.rb')

class CRM
  attr_accessor :name

  def self.run(name)
    my_crm = CRM.new(name)
    my_crm.main_menu
  end

  def initialize(name)
    @name = name
    @rolodex = Rolodex.new
  end

  def print_main_menu
    puts "Main Menu:"
    puts "[1] Add a contact"
    puts "[2] Modify and existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Display an attribute"
    puts "[6] Exit"
  end

  def choose_option(choice)
    case choice
      when 1 then add_contact
      when 2 then modify_contact
      when 3 then delete_contact
      when 4 then display_contacts
      when 5 then display_attributes
      when 6 then exit
      else puts "Check yo self"
    end
  end

  def main_menu
    while true
      puts "Welcome to #{@name}"
      print_main_menu

      print "Select an option:"
      input = gets.chomp.to_i

      return if input == 6

      choose_option(input)
    end
  end

  def add_contact
    puts "Add a contact"
    print "First name: "
    first_name = gets.chomp

    print "Last name: "
    last_name = gets.chomp

    print "Email: "
    email = gets.chomp

    print "Notes: "
    notes = gets.chomp

    @rolodex.add_contact(first_name, last_name, email, notes)

  end

  def modify_contact
    puts "Edit a contact"
  end

  def display_contacts
    @rolodex.all.each do |contact|
      puts "#{contact.first_name} #{contact.last_name}: #{contact.email}"
    end
  end

  def exit
    puts "Goodbye!"
  end
end

CRM.run("Bitmaker CRM")

# CRM.run

# bitmaker = CRM.new("Bitmaker CRM")

# bm_name = bitmaker.name
# bitmaker.name = "Cohort 12"


