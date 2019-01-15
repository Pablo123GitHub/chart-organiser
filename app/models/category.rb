class Category < ApplicationRecord
    scope :recent, -> { where('created_at > ?', 1.week.ago) }
    has_many :charts, dependent: :destroy
    validates :title, presence: true,
                    length: { minimum: 5}
end
