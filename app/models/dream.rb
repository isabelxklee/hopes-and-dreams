class Dream < ApplicationRecord
    belongs_to :user

    validates :title, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 250 }
    validates :duration, presence: true
end
