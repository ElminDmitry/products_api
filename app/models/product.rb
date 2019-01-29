class Product < ApplicationRecord
  validates :name, :barcode, :price, presence: true
  validates :sku, uniqueness: true, presence: true

  scope :by_producer, -> (name) { where(producer: name)}
end
