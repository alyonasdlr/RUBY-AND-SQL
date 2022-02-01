# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************
puts "there are now #{Company.all.count} companies"
# 1a. check out the schema file
# 1b. check out the model file


# 2. create new companies
values = { name:"Apple",
           url:"https://apple.com",
           city: "Cupertino",
           state: "CA"}
apple = Company.new(values)
apple.save

values = { name:"amazon",
           url:"https://amazon.com",
           city: "Seattle",
           state: "WA"}
amazon = Company.new(values)
amazon.save

puts Company.all

california_company = Company.where({state:"CA:"})[0]
puts california_company.inspect

puts "there are now #{Company.all.count} companies"
# 3. query companies table


# 4. read column values from row
puts california_company.read_attribute(:url)
puts california_company.url
# 5. update attribute value
california_company.write_attribute(:slogan,"Think different")
california_company.slogan = "Think different"
california_company.save

puts california_company.inspect