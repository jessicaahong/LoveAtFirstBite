# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ username: "Nick Scalf", email: "nick@gmail.com", password: "12345"},
 					{ username: "Chrissie", email: "chrissie@gmail.com", password: "12345"},
 					{ username: "Andronico's", email: "andronicos@gmail.com", password: "12345"}])
