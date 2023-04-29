class Card < ApplicationRecord
    validates :title, presence: true 
    validates :description, presence: true
    validates :variety, presence: true 
    validates :num, presence: true
end
