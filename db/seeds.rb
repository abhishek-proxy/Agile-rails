# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#...
Product.create!(title: "programming ruby 1.9 and 2.0",
		description: %{<p>
				Ruby is the fastest tyui hjkfsagaorigjarjngrjn
				jafsgja asgjllakrt jgioasj v jlasg gkasj  kljs ga
				lajf kasfj laksjf alksdjglkdsjg.
			       </p>},

		image_url: '3.jpg',
		price: 49.95)	
#...
		

