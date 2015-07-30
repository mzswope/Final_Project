# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shelter1 = Shelter.create(name: "Shelter")

dog1 = Dog.create(name: "Dog", shelter_id: shelter1.id)
dog2 = Dog.create(name: "Dog", shelter_id: shelter1.id)
dog3 = Dog.create(name: "Dog", shelter_id: shelter1.id)

shelter2 = Shelter.create(name: "Pet Hotel")

dogA = Dog.create(name: "Dog", shelter_id: shelter2.id)
dogB = Dog.create(name: "Dog", shelter_id: shelter2.id)
dogC = Dog.create(name: "Dog", shelter_id: shelter2.id)