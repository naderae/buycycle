# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Nader', email: 'naderabouezze93@gmail.com', password: 'nader23', password_confirmation: 'nader23', role: 'Provide Service', service: 'Tutoring')
User.create(username: 'Marwan', email: 'marwanabouezze93@gmail.com', password: 'marwan', password_confirmation: 'marwan', role: 'Provide Service', service: 'Home Improvement')
User.create(username: 'Waseem', email: 'waseemabouezze93@gmail.com', password: 'waseem', password_confirmation: 'waseem', role: 'Provide Service', service: 'Personal Training')

User.create(username: 'Rheam', email: 'rheamabouezze93@gmail.com', password: 'rheam', password_confirmation: 'rheam', role: 'Request Service', service: 'Tutoring')
User.create(username: 'Pierre', email: 'pierreabouezze93@gmail.com', password: 'pierre', password_confirmation: 'pierre', role: 'Request Service', service: 'Home Improvement')
User.create(username: 'Samia', email: 'samiaabouezze93@gmail.com', password: 'samia', password_confirmation: 'samia', role: 'Request Service', service: 'Personal Training')


Post.create(post_type: 'Request Service', service_type: 'Tutoring', content: 'I need a good tutor named nader')
Post.create(post_type: 'Request Service', service_type: 'Home Improvement', content: 'I need a good tutor to help build my house')

Conversation.create(sender_id: User.first.id, recipient_id: User.last.id)
Message.create(body: 'wtvr' , conversation_id: Conversation.first.id, user_id: User.first.id)
