# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# create 5 users with a name email and password

# create 10 articles with a title and body not in order of numbers and no oreder involved like first or second article
Article.create!([
  { title: 'First Article', description: 'This is the first article.', user: User.first },
  { title: 'Second Article', description: 'This is the second article.', user: User.first },
  { title: 'Third Article', description: 'This is the third article.', user: User.first },
  { title: 'Fourth Article', description: 'This is the fourth article.', user: User.first },
  { title: 'Fifth Article', description: 'This is the fifth article.', user: User.first },
  { title: 'Sixth Article', description: 'This is the sixth article.', user: User.first },
  { title: 'Seventh Article', description: 'This is the seventh article.', user: User.first },
  { title: 'Eighth Article', description: 'This is the eighth article.', user: User.first },
  { title: 'Ninth Article', description: 'This is the ninth article.', user: User.first },
  { title: 'Tenth Article', description: 'This is the tenth article.', user: User.first }
])

