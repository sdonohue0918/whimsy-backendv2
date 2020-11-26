class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :post
      t.integer :user_id
      t.integer :eisel_id

      t.timestamps
    end
  end
end
