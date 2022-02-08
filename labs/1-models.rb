# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
apple = Company.where({name: "Apple"})[0]
apple_id = apple.id
# 2. create 1-2 new contacts for each company (they can be made up)
new_contact = Contact.new
new_contact.first_name = "Andy"
new_contact.last_name = "Jassy"
new_contact.email = "andy.jassy@amazon.com"
new_contact.company_id = apple_id
new_contact.save

craig = Contact.new
craig.first_name = "Craig"
craig.last_name = "Federighi"
craig.email = "craig@apple.com"
craig.save


all_contacts = Contact.all
for contact in all_contacts
    puts "#{contact.first_name}"
end    

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:
puts "There are now #{Contact.all.count} contacts"
# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
