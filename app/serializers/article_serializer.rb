class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :body_text, :thumbnail_url, :picture_url, :publish_time, :title

  has_many :user_articles
  has_many :users, through: :user_articles
end
