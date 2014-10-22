# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@contr = Contribution.create(content: "I gave a stranger a friendly compliment.")
lauren = User.create(phone_number: '4016515884', email: 'laurenfazah@gmail.com', password: 'password', password_confirmation: 'password')
laura = User.create(phone_number: '6033203464', email: 'kenny.laur@gmail.com', password: 'password', password_confirmation: 'password')
mom = User.create(phone_number: '4016511650', email: 'mfazah@gmail.com', password: 'password', password_confirmation: 'password')
chris = User.create(phone_number: '4015751156', email: 'cfazah@gmail.com', password: 'password', password_confirmation: 'password')
daniel = User.create(phone_number: '4015750376', email: 'dfazah@gmail.com', password: 'password', password_confirmation: 'password')