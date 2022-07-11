class AddFoerignKeyToPetHistory < ActiveRecord::Migration[7.0]
  def change
    add_reference :pet, index: true, foreign_key: true
  end
end
