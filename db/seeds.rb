User.create!([
               { email: 'mike@gmail.com', password: 'aaaaaa', name: 'Mike' }
             ])

Group.create!([
                { name: 'Clothing, Shoes & Accessories', icon: 'clothing.jpeg', user: User.first },
                { name: 'Baby', icon: 'baby.jpg', user: User.first },
                { name: 'Home & Garden', icon: 'home.jpg', user: User.first },
                { name: 'Jewelry', icon: 'jewelry.jpg', user: User.first },
                { name: 'Watches', icon: 'watch.jpeg', user: User.first },
                { name: 'Sporting Goods', icon: 'sport.png', user: User.first },
                { name: 'Pet Supplies', icon: 'pet.jpeg', user: User.first }
              ])
