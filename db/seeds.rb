# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Country.create( name: "India")
Country.create( name: "USA")
Country.create( name: "Paris")

State.create( name: "haryana" , country_id: 1)
State.create( name: "punjab" , country_id: 1)
State.create( name: "up" , country_id: 2)
State.create( name: "mp" , country_id: 2)
State.create( name: "gujrat" , country_id: 3)
State.create( name: "rajasthan" , country_id: 3)

City.create( name: "Rohtak"  , state_id: 1)
City.create( name: "Hisar"   , state_id: 1)
City.create( name: "Jhajjar" , state_id: 1)
City.create( name: "Jind"    , state_id: 6)
City.create( name: "Kaithal" , state_id: 6)
City.create( name: "Rewari"  , state_id: 5)
City.create( name: "Sampla"  , state_id: 5)
City.create( name: "badalpur" , state_id: 2)
City.create( name: "saheb" , state_id: 2)
City.create( name: "sultanput" , state_id: 2)
City.create( name: "bagh" , state_id: 2)
City.create( name: "kirona" , state_id: 2)
City.create( name: "tugalpur" , state_id: 3)
City.create( name: "sompur" , state_id: 4)
City.create( name: "simla" , state_id: 4)

User.create( name: "xyz1" , phone: 19999999 , email: "aabc@gmail.com",
			 address: "colony" , country_id: 1 , state_id: 3 , city_id: 2)
User.create( name: "xyz2" , phone: 29999999 , email: "abbc@gmail.com",
			 address: "colony" , country_id: 2 , state_id: 1 , city_id: 1)
User.create( name: "xyz3" , phone: 39999999 , email: "abcc@gmail.com",
			 address: "colony" , country_id: 3 , state_id: 1 , city_id: 3)
User.create( name: "xyz4" , phone: 49999999 , email: "abcd@gmail.com",
			 address: "colony" , country_id: 2 , state_id: 2 , city_id: 7)
User.create( name: "xyz5" , phone: 59999999 , email: "abce@gmail.com",
			 address: "colony" , country_id: 1 , state_id: 2 , city_id: 5)