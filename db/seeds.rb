# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Reset Db sequence to avoid heroku errors
ActiveRecord::Base.connection.reset_pk_sequence!('mines')
ActiveRecord::Base.connection.reset_pk_sequence!('trip_members')
ActiveRecord::Base.connection.reset_pk_sequence!('trips')
ActiveRecord::Base.connection.reset_pk_sequence!('posts')
ActiveRecord::Base.connection.reset_pk_sequence!('users')

#seeded mines
Mine.delete_all
Mine.create(id: 1, name: "Hogg Mine", address: "LaGrange, GA", description: "Former beryl mine that still holds some of the best rose quartz in the south. Also to be found are aquamarines, smoky quartz, mica, and black tourmaline.")
Mine.create(id: 2, name: "Graves Mountain", address: "Lincoln County, GA", description: "Graves Mountain has been a mecca for rockhounds for years, it is probably the most famous collecting site in Georgia. The geology of the site is very complex, the original rocks were probably deposited during the Pennsylvanian Period (310-280 million years ago). During the late Pennsylvanian or early Permian Period (290-250 million years ago) the region experienced folding and heating, as the region was heated the sedimentary rock metamorphosed into the schist's and quartzite that now composes Graves Mountain. The dominant rock here at Graves is a pyrite/sericite/kyanite/quartz rock, this is a metamorphic rock, the primary ore is kyanite. Commercial mining began in 1963, at one time this mine produced half the kyanite in the United States.")

TripMember.delete_all
TripMember.create(note: "", user_id: 3, trip_id: 1)
TripMember.create(note: "", user_id: 2, trip_id: 1)
TripMember.create(note: "", user_id: 4, trip_id: 2)
TripMember.create(note: "", user_id: 5, trip_id: 2)
TripMember.create(note: "", user_id: 3, trip_id: 3)
TripMember.create(note: "", user_id: 1, trip_id: 3)
TripMember.create(note: "", user_id: 3, trip_id: 3)
TripMember.create(note: "", user_id: 6, trip_id: 3)


Trip.delete_all
Trip.create(id: 1, date: '2008-11-11', description: "Test trip", user_id: 2 , mine_id: 2)
Trip.create(id: 2, date: '2008-11-11', description: "Test trip", user_id: 4 , mine_id: 1)
Trip.create(id: 3, date: '2008-11-11', description: "Test trip", user_id: 1 , mine_id: 1)


Post.delete_all
Post.create(id: 1, title: 'Rocking!', content: 'Morbi venenatis at eros et vestibulum. Fusce malesuada ullamcorper lectus et mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eu dignissim ligula. Nam venenatis, risus id iaculis cursus, massa diam tincidunt dolor, tincidunt volutpat libero sapien eu augue. Sed eget placerat dolor. Sed ut magna id sapien aliquet convallis sed nec risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tincidunt ac justo ac pulvinar. Duis tincidunt ultricies ullamcorper. Quisque massa felis, volutpat id nisi at, suscipit hendrerit risus.', mine_id: 1, user_id: 3)
Post.create(id: 2, title: 'Meh', content: 'Nulla facilisi. Ut mauris massa, elementum scelerisque felis facilisis, feugiat condimentum urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus efficitur ante eget venenatis condimentum. Suspendisse efficitur ultricies finibus. Fusce mattis, quam eu hendrerit pharetra, felis ante iaculis felis, et sagittis ante turpis eget dui. Quisque in libero rhoncus, cursus justo at, gravida lectus. Duis vel lectus imperdiet, tincidunt justo eu, semper ipsum. Aliquam ultricies hendrerit condimentum. Sed fermentum in risus eu accumsan. Nam id nibh viverra orci tempus interdum. Nullam condimentum tortor vel diam vestibulum dapibus ut finibus lectus. Sed commodo sollicitudin diam et sollicitudin.', mine_id: 1, user_id: 2)
Post.create(id: 3, title: 'Some nice Mica!', content: 'Aliquam non pretium ligula, ut molestie elit. Aenean vitae hendrerit ligula, sit amet auctor felis. Vestibulum euismod quis ligula volutpat congue. Aliquam convallis, urna quis egestas mattis, leo turpis molestie velit, vitae molestie libero velit a sapien. Vivamus ligula odio, efficitur euismod tincidunt sit amet, tempor non quam. Nulla tristique pellentesque libero ut scelerisque. Sed id tincidunt felis. Donec metus justo, ullamcorper id turpis eu, lobortis molestie odio.', mine_id: 1, user_id: 4)
Post.create(id: 4, title: 'So many rose quartz chunks', content: 'Nulla facilisi. Ut mauris massa, elementum scelerisque felis facilisis, feugiat condimentum urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus efficitur ante eget venenatis condimentum. Suspendisse efficitur ultricies finibus. Fusce mattis, quam eu hendrerit pharetra, felis ante iaculis felis, et sagittis ante turpis eget dui. Quisque in libero rhoncus, cursus justo at, gravida lectus. Duis vel lectus imperdiet, tincidunt justo eu, semper ipsum. Aliquam ultricies hendrerit condimentum. Sed fermentum in risus eu accumsan. Nam id nibh viverra orci tempus interdum. Nullam condimentum tortor vel diam vestibulum dapibus ut finibus lectus. Sed commodo sollicitudin diam et sollicitudin.', mine_id: 2, user_id: 6)
Post.create(id: 5, title: 'The weather was terrible, but the mining good.', content: 'Morbi venenatis at eros et vestibulum. Fusce malesuada ullamcorper lectus et mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eu dignissim ligula. Nam venenatis, risus id iaculis cursus, massa diam tincidunt dolor, tincidunt volutpat libero sapien eu augue. Sed eget placerat dolor. Sed ut magna id sapien aliquet convallis sed nec risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tincidunt ac justo ac pulvinar. Duis tincidunt ultricies ullamcorper. Quisque massa felis, volutpat id nisi at, suscipit hendrerit risus.', mine_id: 2, user_id: 6)
Post.create(id: 6, title: 'Its not very accessible', content: 'Aliquam non pretium ligula, ut molestie elit. Aenean vitae hendrerit ligula, sit amet auctor felis. Vestibulum euismod quis ligula volutpat congue. Aliquam convallis, urna quis egestas mattis, leo turpis molestie velit, vitae molestie libero velit a sapien. Vivamus ligula odio, efficitur euismod tincidunt sit amet, tempor non quam. Nulla tristique pellentesque libero ut scelerisque. Sed id tincidunt felis. Donec metus justo, ullamcorper id turpis eu, lobortis molestie odio.', mine_id: 3, user_id: 1)
Post.create(id: 7, title: 'Loved this place!', content: 'Aliquam luctus ornare euismod. Fusce at urna non sem blandit porta. Praesent id lacus nec tellus ullamcorper bibendum id in ex. Nullam sit amet diam dignissim, luctus eros sit amet, ultrices arcu. Pellentesque ultrices placerat congue. Maecenas vehicula, ex eu malesuada laoreet, erat lectus bibendum nisi, eget rutrum nisl eros id lectus. Suspendisse quis velit congue, rhoncus erat consequat, tempor felis. Pellentesque hendrerit lectus purus, quis tincidunt tellus euismod vel. Donec luctus odio at libero feugiat, eget accumsan lorem commodo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tristique, nisl non accumsan feugiat, purus ex rutrum urna, vitae pellentesque ipsum magna quis est.', mine_id: 3, user_id: 5)
Post.create(id: 8, title: 'Try to work in the lower trench if you can get a spot.', content: 'Nulla facilisi. Ut mauris massa, elementum scelerisque felis facilisis, feugiat condimentum urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus efficitur ante eget venenatis condimentum. Suspendisse efficitur ultricies finibus. Fusce mattis, quam eu hendrerit pharetra, felis ante iaculis felis, et sagittis ante turpis eget dui. Quisque in libero rhoncus, cursus justo at, gravida lectus. Duis vel lectus imperdiet, tincidunt justo eu, semper ipsum. Aliquam ultricies hendrerit condimentum. Sed fermentum in risus eu accumsan. Nam id nibh viverra orci tempus interdum. Nullam condimentum tortor vel diam vestibulum dapibus ut finibus lectus. Sed commodo sollicitudin diam et sollicitudin.', mine_id: 3, user_id: 1)

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

User.create(id: 3,
            email: 'joy@example.com',
            password: 'default',
            password_confirmation: 'default',
            avatar_url: 'http://i.imgur.com/JveSa0a.jpg',
            bio: "I love minerals! I can't wait to hit more mines.",
            location: 'Woodstock, GA',
            username: 'Joy'
)

User.create(id: 4,
            email: 'gail@example.com',
            password: 'default',
            password_confirmation: 'default',
            avatar_url: 'http://i.imgur.com/9lDIrSL.jpg',
            bio: "I love minerals! I can't wait to hit more mines.",
            location: 'Roswell, GA',
            username: 'Gail'
)
User.create(id: 5,
            email: 'jim@example.com',
            password: 'default',
            password_confirmation: 'default',
            avatar_url: 'http://i.imgur.com/25NVpHI.jpg',
            bio: "I love minerals! I can't wait to hit more mines.",
            location: 'Orange Park, FL',
            username: 'James'
)

User.create(id: 6,
            email: 'Aaron@example.com',
            password: 'default',
            password_confirmation: 'default',
            avatar_url: 'http://i.imgur.com/44Hq2PO.jpg',
            bio: "I love minerals! I can't wait to hit more mines.",
            location: 'Los Angeles, CA',
            username: 'Aaron'
)