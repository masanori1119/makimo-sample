class RenameTweetIdColumnToComments < ActiveRecord::Migration
  def change
    rename_column :comments, :tweet_id, :post_id
  end
end
