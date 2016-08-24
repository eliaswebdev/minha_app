# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

1000.times do 
	Student.create(
		name: FFaker::NameBR.name,
		registration: (100..999).to_a.shuffle.first,
		birth_date: Date.current-((18..58).to_a.shuffle.first).year,
		status: true,
		age: (18..70).to_a.shuffle.first
	)
end