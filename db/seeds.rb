# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'jope', password: 'password')
User.create(username: 'nico', password: 'password')
User.create(username: 'gonza', password: 'password')
User.create(username: 'nahuel', password: 'password')
User.create(username: 'coti', password: 'password')

Message.create(body: 'Hi, how are you?', user_id: 1)
Message.create(body: 'Hi!!!!!!!', user_id: 2)
Message.create(body: 'What\'s uppp', user_id: 3)
Message.create(body: 'How is it going?', user_id: 2)
Message.create(body: 'Hi, how are you?', user_id: 1)
Message.create(body: 'Hi, how are you?', user_id: 4)
