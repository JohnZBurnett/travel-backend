class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body_text
      t.string :thumbnail_url
      t.string :picture_url
      t.string :publish_time
      t.timestamps
    end
  end
end
