class Customer < ApplicationRecord
    validates :full_name, :phone_number, presence: true
    validates :full_name, uniqueness: true
    
    has_one_attached :image
end
