class Category < ApplicationRecord
    has_many :charts, dependent: :destroy
    validates :title, presence: true,
                    length: { minimum: 5}
end
