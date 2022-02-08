# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-associations.rb

# 1. write code to display each contact (you can reuse the previous lab's code) and include the contact's company name, e.g.:
apple = Company.where({name: "Apple"})[0]
apple_id = apple.id
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
craig.company_id = apple_id
craig.save

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com - Amazon.com, Inc.
# Craig Federighi - craig@apple.com - Apple Inc.
# Elon Musk - elon@tesla.com - Tesla, Inc.
# Tim Cook - tim@apple.com - Apple Inc.

# 2. similar to above, but this time organized by company, write code to display each company (name) and its contacts, e.g.:


#puts "Apple"
#all_contacts = Contact.all
#for contact in all_contacts
#    puts "#{contact.first_name} #{contact.last_name} - #{contact.company.name}"
#end  



for company in Company.all
    puts company.name
    for contact in company.contacts
        puts " #{contact.first_name} "
    end
end   
# ---------------------------------
# Apple Inc.
# Tim Cook - tim@apple.com
# Craig Federighi - craig@apple.com
#
# Amazon.com, Inc.
# Andy Jassy - andy@amazon.com
#
# Tesla, Inc.
# Elon Musk - elon@tesla.com
