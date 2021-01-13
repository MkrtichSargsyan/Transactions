# User.create!([
              #  { email: 'mike@gmail.com', password: 'aaaaaa', name: 'Mike' }
            #  ])

# Group.create!([
                # { name: 'Clothing, Shoes & Accessories', user: User.first },
                # { name: 'Baby', user: User.first },
                # { name: 'Home & Garden', user: User.first },
                # { name: 'Jewelry',  user: User.first },
                # { name: 'Watches',  user: User.first },
                # { name: 'Sporting Goods', user: User.first },
                # { name: 'Pet Supplies', user: User.first }
              # ])

# Group.find(1).icon.attach(io: File.open('https://res.cloudinary.com/dv9m8gar7/image/upload/v1610512186/group_icons/'), filename: 'clothing_cv4uuk.jpg')
# Group.find(2).icon.attach('group_icons/baby_lyimex.jpg')
# Group.find(3).icon.attach('group_icons/home_taglxr.jpg')
# Group.find(4).icon.attach('group_icons/jewelry_u30ter.jpg')
# Group.find(5).icon.attach('group_icons/watch_extl0i.jpg')
# Group.find(6).icon.attach('group_icons/sport_soivkx.png')
# Group.find(7).icon.attach('group_icons/pet_g8z4t8.jpg')

#  <% cl_image_tag("group_icons/baby_lyimex.jpg") %>