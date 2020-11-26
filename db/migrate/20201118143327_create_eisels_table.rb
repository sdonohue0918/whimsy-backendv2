class CreateEiselsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :eisels do |t|
      t.string :name
      t.string :genre
      t.integer :user_id
    end
  end
end
