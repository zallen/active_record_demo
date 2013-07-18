# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
	{email_address: "fmulder@fbi.gov", first_name: "Fox",  last_name: "Mulder", password: "Trustno1", password_confirmation: "Trustno1", phone_number: "510-808-2600"},
	{email_address: "dscully@fbi.gov", first_name: "Dana", last_name: "Scully", password: "Sk3ptic!", password_confirmation: "Sk3ptic!", phone_number: "202-324-3000"}])

addresses = Address.create([
	{city: "Washington", state: "DC", street_address: "935 Pennsylvania Avenue, NW", zip_code: "20535-0001 "}])

user_addresses = UserAddress.create([
	{user_id: 1, address_id: 1},
	{user_id: 1, address_id: 2}])

mulder = User.find(1)
scully = User.find(2)

mulder.sent_messages.create(to_user_id: scully.id, message: "The truth is out there!")