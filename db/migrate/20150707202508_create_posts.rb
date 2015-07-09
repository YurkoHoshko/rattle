class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :short_description
      t.text :content
      t.integer :count_of_votes, default: 0

      t.timestamps null: false
    end
  end
end
