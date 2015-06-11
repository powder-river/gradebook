# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

array = [1,2,3,4,5]

Teacher.create!(name: "Seth Ward", email: "sward@uwyo.edu", password: "password")
Teacher.create!(name: "Steve Barnhart", email: "sbarnhart@uwyo.edu", password: "password")
Teacher.create!(name: "Daniel Blair", email: "dblair@uwyo.edu", password: "dog")
Teacher.create!(name: "Leonard Wahsington", email: "lwashington@uwyo.edu", password: "password")
Teacher.create!(name: "Danai Adkisson", email: "dadkisso@uwyo.edu", password: "danai")

Student.create!(name: "Kelsie Adkisson", email: "kadkisso@uwyo.edu", password: "password", teacher_id:1)

#
# 50.times do
#   last_name = Faker::Name.last_name
# Parent.create!(student_name: "#{Faker::Name.first_name} #{last_name}",
# parent_name:"#{Faker::Name.first_name} #{last_name}", parent_email:"#{Faker::Internet.email}",
# educator_id: array.sample)
#
# end
