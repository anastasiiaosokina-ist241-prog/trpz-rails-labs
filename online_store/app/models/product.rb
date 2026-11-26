class Product < ApplicationRecord
  has_one :product_detail, dependent: :destroy
  belongs_to :category, optional: true
  has_and_belongs_to_many :orders
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
