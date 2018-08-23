# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Booking.destroy_all
Item.destroy_all
User.destroy_all



#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!( email: "TheresaMay-RealOne@gov.uk", full_name: "Theresa May", politician: true, password: "123123", about: nil)
# User.create!(image: "boris_johnson.jpg", email: "BrexitBulldog@gov.uk", full_name: "Boris Johnson", politician: true, password: "123123", about: nil)
# User.create!(image: "ed_milliband.jpg", email: "EdyMilliband@gov.uk", full_name: "Ed Milliband", politician: true, password: "123123", about: nil)
# User.create!(image: "jeremy_corbyn.jpg", email: "ForTheMany@gov.uk", full_name: "Jeremy Corbyn", politician: true, password: "123123", about: nil)
# User.create!(image: "shami_chakrabarti.jpg", email: "ChakrabatiDontExpel@gov.uk", full_name: "Shami Chakrabarti", politician: true, password: "123123", about: nil)
# User.create!(image: "nicola_sturgeon.jpg", email: "MyReferendum@gov.uk", full_name: "Nicola Sturgeon", politician: true, password: "123123", about: nil)
# User.create!(image: "jeremy_hunt.jpg", email: "JeremyHunt-notDoH@gov.uk", full_name: "Jeremy Hunt", politician: true, password: "123123", about: nil)

# Done Item.create!(image: "wheat_fields_TM.jpg", description: "Wheat Fields", price: "15", category: "miscellaneous")
# Done Item.create!(image: "fish_chips_TM.jpg", description: "Fish and Chips", price: "5", category: "miscellaneous")
# Done Item.create!(image: "house_all.jpg", description: "House", price: "80", category: "accommodation")
# Done Item.create!(image: "car_all.jpg", description: "Car", price: "35", category: "transport")
# Done Item.create!(image: "bicycle_all.jpg", description: "Bicycle", price: "20", category: "transport")
# Done Item.create!(image: "house_all.jpg", description: "House", price: "120", category: "accommodation")
# Done Item.create!(image: "zipline_BJ.jpg", description: "Zip Line", price: "12", category: "miscellaneous")
# Done Item.create!(image: "bacon_sandwich.jpg", description: "Bacon Sandwich", price: "3", category: "miscellaneous")
# Done Item.create!(image: "house_all.jpg", description: "House", price: "100", category: "accommodation")
# Done Item.create!(image: "wreath_JC.jpg", description: "Wreath", price: "8", category: "miscellaneous")
# DoneItem.create!(image: "house_all.jpg", description: "House", price: "75", category: "accommodation")
# Done Item.create!(image: "bicycle_all.jpg", description: "Bicycle", price: "18", category: "transport")
# Done Item.create!(image: "peerage_SC.jpg", description: "Life Peerage", price: "10", category: "miscellaneous")
# Done Item.create!(image: "house_all.jpg", description: "House", price: "85", category: "accommodation")
# # Item.create!(image: "", description: "Alex Salmond", price: "50", category: "miscellaneous")
# Done Item.create!(image: "referendum.jpg", description: "Referendum", price: "90", category: "miscellaneous")
# Done Item.create!(image: "nhs_JH.png", description: "Save! NHS poster", price: "0", category: "miscellaneous")

######### Users are below #########

# Theresa May
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/theresa_may.jpg"
user_1 = User.new(email: "TheresaMay-RealOne@gov.uk", full_name: "Theresa May", politician: true, password: "123123", about: nil)
user_1.remote_photo_url = url
user_1.save!

# Boris Johnson
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021671/Politicians%20Rental/boris_johnson.jpg"
user_2 = User.new(email: "BrexitBulldog@gov.uk", full_name: "Boris Johnson", politician: true, password: "123123", about: nil)
user_2.remote_photo_url = url
user_2.save!

# Ed Milliband
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021671/Politicians%20Rental/ed_milliband.jpg"
user_3 = User.new(email: "EdyMilliband@gov.uk", full_name: "Ed Milliband", politician: true, password: "123123", about: nil)
user_3.remote_photo_url = url
user_3.save!

# Jeremy Corbyn
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/jeremy_corbyn.jpg"
user_4 = User.new(email: "ForTheMany@gov.uk", full_name: "Jeremy Corbyn", politician: true, password: "123123", about: nil)
user_4.remote_photo_url = url
user_4.save!

# Shami Chakrabarti
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/shami_chakrabarti.jpg"
user_5 = User.new(email: "ChakrabatiDontExpel@gov.uk", full_name: "Shami Chakrabarti", politician: true, password: "123123", about: nil)
user_5.remote_photo_url = url
user_5.save!

# Nicola Sturgeon
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021670/Politicians%20Rental/nicola_sturgeon.jpg"
user_6 = User.new(email: "MyReferendum@gov.uk", full_name: "Nicola Sturgeon", politician: true, password: "123123", about: nil)
user_6.remote_photo_url = url
user_6.save!

# Jeremy Hunt
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/jeremy_hunt.jpg"
user_7 = User.new(email: "JeremyHunt-notDoH@gov.uk", full_name: "Jeremy Hunt", politician: true, password: "123123", about: nil)
user_7.remote_photo_url = url
user_7.save!


######### Items are below #########

#### Theresa May's items
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021673/Politicians%20Rental/wheat_fields_TM.jpg"
item = Item.new(description: "Wheat Fields", price: "15", category: "miscellaneous")
item.user = user_1
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/fish_chips_TM.jpg"
item = Item.new(description: "Fish and Chips", price: "5", category: "miscellaneous")
item.user = user_1
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/house_all.jpg"
item = Item.new(description: "House", price: "80", category: "accommodation")
item.user = user_1
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021673/Politicians%20Rental/car_all.jpg"
item = Item.new(description: "Car", price: "35", category: "transport")
item.user = user_1
item.remote_photo_url = url
item.save!


#### Boris Johnson's items
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/underwear.jpg"
item = Item.new(description: "Wig", price: "15", category: "miscellaneous")
item.user = user_2
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021671/Politicians%20Rental/bicycle_all.jpg"
item = Item.new(description: "Bicycle", price: "20", category: "transport")
item.user = user_2
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/house_all.jpg"
item = Item.new(description: "House", price: "120", category: "accommodation")
item.user = user_2
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021674/Politicians%20Rental/zipline_BJ.jpg"
item = Item.new(description: "Zip Line", price: "12", category: "miscellaneous")
item.user = user_2
item.remote_photo_url = url
item.save!


#### Ed Milliband's items
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/bacon_sandwich.jpg"
item = Item.new(description: "Bacon Sandwich", price: "3", category: "miscellaneous")
item.user = user_3
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/house_all.jpg"
item = Item.new(description: "House", price: "100", category: "accommodation")
item.user = user_3
item.remote_photo_url = url
item.save!


#### Jeremy Corbyn's items
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021674/Politicians%20Rental/wreath_JC.jpg"
item = Item.new(description: "Wreath", price: "8", category: "miscellaneous")
item.user = user_4
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021671/Politicians%20Rental/bicycle_all.jpg"
item = Item.new(description: "House", price: "75", category: "accommodation")
item.user = user_4
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021671/Politicians%20Rental/bicycle_all.jpg"
item = Item.new(description: "Bicycle", price: "18", category: "transport")
item.user = user_4
item.remote_photo_url = url
item.save!


#### Shami Chakrabarti's items
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021671/Politicians%20Rental/peerage_SC.jpg"
item = Item.new(description: "Life Peerage", price: "10", category: "miscellaneous")
item.user = user_5
item.remote_photo_url = url
item.save!


#### Nicola Sturgeon
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021672/Politicians%20Rental/house_all.jpg"
item = Item.new(description: "House", price: "85", category: "accommodation")
item.user = user_6
item.remote_photo_url = url
item.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021671/Politicians%20Rental/referendum.jpg"
item = Item.new(description: "Referendum", price: "90", category: "miscellaneous")
item.user = user_6
item.remote_photo_url = url
item.save!


#### Jeremy Hunt's items
url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535021670/Politicians%20Rental/nhs_JH.png"
item = Item.new(description: "Save! NHS poster", price: "0", category: "miscellaneous")
item.user = user_6
item.remote_photo_url = url
item.save!

# puts "I have created #{User.count} users and #{Item.count} items"


























