class AddFoerignKeyToPetHistory < ActiveRecord::Migration[7.0]
  def change
    #add_reference :pet, foreign_key: true
  end
  add_foreign_key "pet_histories", "pets"
end
