class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
  validates :body, presence: true
end