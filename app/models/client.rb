class Client < ApplicationRecord
    has_many :pet, dependent: :destroy
    validates :name, presence: true
    validates :phone, presence: true
    validates :email, presence: true

    def pet_count(client_id)
        pet_count = Pet.where(client_id: client_id).count
    end
    
end
