# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "TheresaMay-RealOne@gov.uk", full_name: "Theresa May", politician: true, password: "123123", about: nil)
User.create(email: "BrexitBulldog@gov.uk", full_name: "Boris Johnson", politician: true, password: "123123", about: nil)
User.create(email: "EdyMilliband@gov.uk", full_name: "Ed Milliband", politician: true, password: "123123", about: nil)
User.create(email: "ForTheMany@gov.uk", full_name: "Jeremy Corbyn", politician: true, password: "123123", about: nil)
User.create(email: "ChakrabatiDontExpel@gov.uk", full_name: "Shami Chakrabarti", politician: true, password: "123123", about: nil)
User.create(email: "MyReferendum@gov.uk", full_name: "Nicola Sturgeon", politician: true, password: "123123", about: nil)
User.create(email: "JeremyHunt-notDoH@gov.uk", full_name: "Jeremy Hunt", politician: true, password: "123123", about: nil)

Item.create!(description: "Wheat Fields", price: "15", user_id: 1, category: "miscellaneous")
Item.create!(description: "Fish and Chips", price: "5", user_id: 1, category: "miscellaneous")
Item.create!(description: "House", price: "80", user_id: 1, category: "accommodation")
Item.create!(description: "Car", price: "35", user_id: 1, category: "transport")
Item.create!(description: "Bicycle", price: "20", user_id: 2, category: "transport")
Item.create!(description: "House", price: "120", user_id: 2, category: "accommodation")
Item.create!(description: "Zip Line", price: "12", user_id: 2, category: "miscellaneous")
Item.create!(description: "Bacon Sandwich", price: "3", user_id: 3, category: "miscellaneous")
Item.create!(description: "House", price: "100", user_id: 3, category: "accommodation")
Item.create!(description: "Wreath", price: "8", user_id: 4, category: "miscellaneous")
Item.create!(description: "House", price: "75", user_id: 4, category: "accommodation")
Item.create!(description: "Bicycle", price: "18", user_id: 4, category: "transport")
Item.create!(description: "Life Peerage", price: "10", user_id: 5, category: "miscellaneous")
Item.create!(description: "House", price: "85", user_id: 6, category: "accommodation")
Item.create!(description: "Alex Salmond", price: "50", user_id: 6, category: "miscellaneous")
Item.create!(description: "Referendum", price: "90", user_id: 6, category: "miscellaneous")
Item.create!(description: "Save NHS poster", price: "0", user_id: 7, category: "miscellaneous")
