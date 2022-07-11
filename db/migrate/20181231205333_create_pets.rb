class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.belongs_to :client, index: true, foreign_key: true
      t.string :name
      t.string :race
      t.date :birthdate

      t.timestamps
    end
  end
end
