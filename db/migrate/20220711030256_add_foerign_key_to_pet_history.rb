class AddFoerignKeyToPetHistory < ActiveRecord::Migration[7.0]
  def change
    belongs_to :pet, index: true, foreign_key: true
  end
end
