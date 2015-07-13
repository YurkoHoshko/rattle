class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :post, index: true
      t.integer :parent_id
      t.text :content

      t.timestamps null: false
    end
  end
end
