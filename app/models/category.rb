class Category < ApplicationRecord
    has_many :charts
    validates :title, presence: true,
                    length: { minimum: 5}
end
