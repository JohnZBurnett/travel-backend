class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password

  has_many :user_articles
  has_many :articles, through: :user_articles
end
