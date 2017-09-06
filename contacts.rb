Bonus Objectives
require 'pry'
@contacts = ["Allie", "Lindsay", "Andrea"]

def menu
  puts "--Contacts List Menu--"
  puts "1) View All Contacts"
  puts "2) Create Contact"
  puts "3) Search Contacts"
  puts "4) Edit a Contact"
  puts "5) Delete a contact"
  puts "6) Exit"
end

def view_contacts
  @contacts.each do |contact|
    puts "#{contact}"
  end
end

def create_contact
  puts "Create a Contact: "
  contact = gets.strip.capitalize
  @contacts << contact
end

def search_contact
  puts "Search for a contact"
  user_search = gets.strip.capitalize
  if @contacts.include?(user_search)
    puts "#{user_search} is in the contact list"
  else 
    puts "Contact not found"
  end
end

def edit_contact
  puts "Which contact would you like to edit?"
  user_edit = gets.strip.capitalize
  index_num = @contacts.find_index(user_edit)
  if index_num == nil
    puts "Contact not found"
  else
    puts "Add a new contact"
    new_contact = gets.strip.capitalize
    @contacts[index_num] = new_contact
  end
end

def delete_contact
  puts "Which contact would you like to delete?"
  user_input = gets.strip.capitalize
  deleted_contact = @contacts.delete(user_input) {"Contact not found"}
  puts deleted_contact == user_input ? "#{deleted_contact} has been deleted." : "#{deleted_contact}"
end

while true
  menu
  case gets.chomp
    when "1"
      view_contacts
    when "2"
      create_contact
    when "3"
      search_contact
    when "4"
      edit_contact
    when "5"
      delete_contact
    when "6"
      puts "Exiting Program"
      exit
    else 
      puts "Try again"
  end
end
