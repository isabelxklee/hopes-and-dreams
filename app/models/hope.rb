class Hope < ApplicationRecord
    belongs_to :user
    has_many :dreams, through: :user

    validates :title, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 250 }
    validates :category, presence: true
end
