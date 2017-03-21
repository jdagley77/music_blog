class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.datetime :post_date
      t.string :title
      t.text :body
      t.string :genre
      t.integer :category_id
    end
  end
end
