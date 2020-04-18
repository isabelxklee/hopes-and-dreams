class Category < ApplicationRecord
    has_many :hopes

    validates :title, presence: true
end