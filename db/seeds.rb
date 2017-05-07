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
Mine.create(id: 2, name: "DemoMine", address: "456 Avenue Hwy. New City, FL", description: "We have rocks!")

Post.create(id: 1, title: 'Rocking!', content: 'Freak human out make funny noise mow mow mow mow mow mow success now attack human chew iPad power cord purr so leave fur on owners clothes or knock dish off table head butt cant eat out of my own dish. Cereal boxes make for five star accommodation ask for petting go into a room to decide you did not want to be in there anyway yet chew foot, yet scratch the box if it smells like fish eat as much as you wish. I am getting hungry. Cat not kitten around then cats take over the world and meow all night having their mate disturbing sleeping humans kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff or nap all day, or if it fits, i sits', mine_id: 1, user_id: 1)
Post.create(id: 2, title: 'Meh', content: 'I like big cats and i can not lie sit by the fire yet meow for food, then when human fills food dish, take a few bites of food and continue meowing please stop looking at your phone and pet me, destroy the blinds give attitude. You call this cat food?', mine_id: 2, user_id: 1)

Post.first.update(created_at: Time.utc(2017, 4, 27, 8, 30))
Post.second.update(created_at: Time.utc(2017, 4, 16, 10, 30))

User.delete_all
User.create(id: 1,
            email: 'miriam.lowe16@example.com',
            password: 'default',
            password_confirmation: 'default',
            avatar_url: 'http://i.imgur.com/9lDIrSL.jpg',
            bio: "I love the outdoors! Nothing is better than a stroll through a park or wilderness. I hope to visit every national park in the U.S.!",
            location: 'Atlanta, GA',
            username: 'LunaMoth'
)
User.create(id: 2,
            email: 'julia.bailey83@example.com',
            password: 'default',
            password_confirmation: 'default',
            avatar_url: 'http://i.imgur.com/JveSa0a.jpg',
            bio: "Hi there! I'm Julia and I just adore the theatre! One day I hope to visit New York and go to a Broadway show.",
            location: 'Savannah, GA',
            username: 'StageJewel'
)
