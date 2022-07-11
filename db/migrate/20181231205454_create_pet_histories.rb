class CreatePetHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_histories do |t|
      #t.belongs_to :pet, index: true, foreign_key: true
      t.float :weight
      t.string :heigth
      t.text :description
      t.integer :pet_id

      t.timestamps
    end
  end
end
