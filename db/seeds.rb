User.create!([
               { email: 'mike@gmail.com', password: 'aaaaaa', name: 'Mike' }
             ])

Group.create!([
                { name: 'Clothings', icon: 'icon', user: User.first },
                { name: 'Cars', icon: 'icon', user: User.first }
              ])
