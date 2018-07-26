# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_user = User.create(username: "firstusername", password: "password")
first_article = Article.create(title: "Test Title", body_test: "test body", thumbnail_url: "test", picture_url: "test", publish_time: "20XX")
first_join = UserArticle.create(user_id: first_user.id, article_id: first_article.id)

