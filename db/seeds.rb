# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |count|
  Users.create(
        first_name: "first#{count}",
        last_name: "last#{count}",
        username: "username#{count}",
        email: "test#{count}@gmail.com",
        password: 'password',
        birthday: (Date.today - count.years)
)
# end
# 50.times do |count|
#   us = Users.create(
#     first_name: 'mr',
#     last_name: 'robot',
#     username: 'megapihor',
#     birthday: '20.08.1994',
#     email: "robot#{count}.@gmail.com",
#     password: 123_456
#   )
  end
