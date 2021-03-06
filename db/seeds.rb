# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comedy = Category.create(name: 'comedy')
drama = Category.create(name: 'drama')

Video.create(title: 'South Park', description: 'A comedy of messed up kids', small_cover_url: '/tmp/south_park.jpg', category: comedy)
Video.create(title: 'Family Guy', description: 'Basically copying south park and Simpsons', small_cover_url: '/tmp/family_guy.jpg', category: comedy)
Video.create(title: 'Futurama', description: 'An oddly attractive alien chick', small_cover_url: '/tmp/futurama.jpg', category: comedy)
Video.create(title: 'Monk', description: 'A delusional mental patient', small_cover_url: '/tmp/monk.jpg', large_cover_url: '/tmp/monk_large.jpg', category: drama)
Video.create(title: 'South Park', description: 'A comedy of messed up kids', small_cover_url: '/tmp/south_park.jpg', category: comedy)
Video.create(title: 'Family Guy', description: 'Basically copying south park and Simpsons', small_cover_url: '/tmp/family_guy.jpg', category: comedy)
Video.create(title: 'Futurama', description: 'An oddly attractive alien chick', small_cover_url: '/tmp/futurama.jpg', category: comedy)
Video.create(title: 'Monk', description: 'A delusional mental patient', small_cover_url: '/tmp/monk.jpg', large_cover_url: '/tmp/monk_large.jpg', category: drama)
Video.create(title: 'South Park', description: 'A comedy of messed up kids', small_cover_url: '/tmp/south_park.jpg', category: comedy)
