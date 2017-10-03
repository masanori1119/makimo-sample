class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string      :nickname
      t.text        :title
      t.text        :post
      t.timestamps null: false
    end
  end
end
