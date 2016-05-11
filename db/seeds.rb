# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create!(branch_name: "Downtown", contact_name: "Carol")
Location.create!(branch_name: "Main", contact_name: "Anelis")
Location.create!(branch_name: "Callie", contact_name: "Fred")

Box.create!(name: "A1")
Box.create!(name: "A2")
Box.create!(name: "B1")
Box.create!(name: "C1")
Box.create!(name: "D1")

AgeGroup.create!(age:"0 - 3 months", color: "white")
AgeGroup.create!(age:"3 - 6 months", color: "orange")
AgeGroup.create!(age:"7 -12 months", color: "yellow")
AgeGroup.create!(age:"1 year", color: "red")
AgeGroup.create!(age:"2 years", color: "green")
AgeGroup.create!(age:"3 - 5 years", color: "blue")

Toy.create!(name: "Mr. Potato Head", pieces: 13)
Toy.create!(name: "Flexi-Loop", pieces: 1)
Toy.create!(name: "Links", pieces: 4)
Toy.create!(name: "Learning with Animals Book", pieces: 1)
Toy.create!(name: "Duck", pieces: 1)
