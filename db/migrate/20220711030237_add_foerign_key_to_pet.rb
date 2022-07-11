class AddFoerignKeyToPet < ActiveRecord::Migration[7.0]
  def change
    add_reference :client, index: true, foreign_key: true
  end
end
