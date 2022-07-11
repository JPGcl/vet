class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_history, dependent: :destroy 
  validates :name, presence: true
  validates :race, presence: true
  validates :birthdate, presence: true

  def history_count(pet_id)
    history_count = PetHistory.where(pet_id: pet_id).count
  end

  def avg_weight(pet_id)
    avg_weight = PetHistory.where(pet_id: pet_id).average('weight')
  end

  def avg_height(pet_id)
    avg_height = PetHistory.where(pet_id: pet_id).average('heigth')
  end

  def max_weight(pet_id)
    max_weight = PetHistory.where(pet_id: pet_id).maximum('weight')
  end

  def max_height(pet_id)
    max_height = PetHistory.where(pet_id: pet_id).maximum('heigth')
  end

end
