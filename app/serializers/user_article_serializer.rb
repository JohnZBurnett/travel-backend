class UserArticleSerializer < ActiveModel::Serializer
  attributes :user_id

  belongs_to :user
  belongs_to :article
end
