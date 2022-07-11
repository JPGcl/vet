class AddFoerignKeyToPet < ActiveRecord::Migration[7.0]
  def change
    #add_reference :client, foreign_key: true
    #add_reference :uploads, :user, foreign_key: true
    
  end
  add_foreign_key "pets", "clients"
end
