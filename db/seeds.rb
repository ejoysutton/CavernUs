# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Reset Db sequence to avoid heroku errors
ActiveRecord::Base.connection.reset_pk_sequence!('mines')

#seeded mines
Mine.delete_all
Mine.create(id: 1, name: "TestMine", address: "123 Street Rd. Placeville, GA", description: "What a mine! A real mine's mine. I'd mine at this mine and have some stuff that I'd call mine.")

