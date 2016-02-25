# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ username: "Caleb Chen", email: "caleb@gmail.com", password: "12345"},
					{ username: "Nick Scalf", email: "nick@gmail.com", password: "12345"},
 					{ username: "Chrissie", email: "chrissie@gmail.com", password: "12345"},
 					{ username: "Andronico's", email: "andronicos@gmail.com", password: "12345"}])

listings = Listing.create([{user_id: 2, title: "Mandarin Oranges", produce_category: "orange", quantity: "approx 25 oranges", description: "deformed but delicious", address_line1: "123 Bancroft Way", address_line2: "Apt 9", city: "Berkeley", state: "CA", zip: "94701", phone: "949-123-4567", prefers_phone: true, prefers_email: false },
						{user_id: 5, title: "Swiss Chard", produce_category: "leafy greens", quantity: "15 bunches", description: "deformed but delicious", address_line1: "225 Bush St", city: "San Francisco", state: "CA", zip: "94108", phone: "415-123-4567", prefers_phone: true, prefers_email: true },
						{user_id: 4, title: "cherry tomatoes", produce_category: "avocado", quantity: "7 pints", description: "deformed but delicious", address_line1: "123 Testing Way", address_line2: "Suite 200", city: "san francisco", state: "CA", zip: "94109", phone: "415-123-4567", prefers_email: true }])