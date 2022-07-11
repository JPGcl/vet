class AddFoerignKeyToPet < ActiveRecord::Migration[7.0]
  def change
    belongs_to :client, index: true, foreign_key: true
  end
end
