class Chart < ApplicationRecord
  belongs_to :category
  has_one_attached :image
  validates :image, attached: true

end
