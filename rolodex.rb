require_relative('contact.rb')

class Rolodex
  def initialize
    @id = 100
    @contacts = []
  end

  def add_contact(first_name, last_name, email, notes)
    contact = Contact.new(@id, first_name, last_name, email, notes)
    @id += 1

    @contacts << contact
  end

  def all
    @contacts
  end
end