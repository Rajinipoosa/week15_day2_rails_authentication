# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Account.destroy_all()
User.destroy_all()

user_one = User.create({email: "rajini@gmail.com", password:'password',
  password_confirmation: 'password'})
user_two = User.create({email: "satish@gmail.com", password:'password',
  password_confirmation: 'password'})

user_one.accounts.create({name: 'local',amount: 2.00})
user_two.accounts.create({name: 'offshore',amount: 5.00})