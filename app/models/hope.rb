class Hope < ApplicationRecord
    belongs_to :user
    belongs_to :category

    validates :title, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 1000 }
    validates :user_id, presence: true
    validates :date, presence: true

    # validate :before_today

    private
    def before_today
        today = Time.now
        if today < date
          errors.add(:date, "must be in the past.")
        end
    end
end