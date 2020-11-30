class AddReferenesToEisel < ActiveRecord::Migration[6.0]
  def change
    add_reference :eisels, :like, index:true
  end
end
