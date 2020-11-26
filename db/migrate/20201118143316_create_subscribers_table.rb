class CreateSubscribersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribers do |t|
      t.string :username
      t.integer :user_id
    end
  end
end
