User.create!([
               { email: 'mike@gmail.com', password: 'aaaaaa', name: 'Mike' }
             ])

Group.create!([
                { name: 'Clothing, Shoes & Accessories', user: User.first },
                { name: 'Baby', user: User.first },
                { name: 'Home & Garden', user: User.first },
                { name: 'Jewelry',  user: User.first },
                { name: 'Watches',  user: User.first },
                { name: 'Sporting Goods', user: User.first },
                { name: 'Pet Supplies', user: User.first }
              ])

Group.find(1).icon.attach(io: File.open(Rails.root.join('app', 'assets', 'images/group_images', 'clothing.jpeg')), filename: 'sport.png', content_type: 'image/png')
Group.find(2).icon.attach(io: File.open(Rails.root.join('app', 'assets', 'images/group_images', 'baby.jpg')), filename: 'sport.png', content_type: 'image/png')
Group.find(3).icon.attach(io: File.open(Rails.root.join('app', 'assets', 'images/group_images', 'home.jpg')), filename: 'sport.png', content_type: 'image/png')
Group.find(4).icon.attach(io: File.open(Rails.root.join('app', 'assets', 'images/group_images', 'jewelry.jpg')), filename: 'sport.png', content_type: 'image/png')
Group.find(5).icon.attach(io: File.open(Rails.root.join('app', 'assets', 'images/group_images', 'watch.jpeg')), filename: 'sport.png', content_type: 'image/png')
Group.find(6).icon.attach(io: File.open(Rails.root.join('app', 'assets', 'images/group_images', 'sport.png')), filename: 'sport.png', content_type: 'image/png')
Group.find(7).icon.attach(io: File.open(Rails.root.join('app', 'assets', 'images/group_images', 'pet.jpeg')), filename: 'sport.png', content_type: 'image/png')
