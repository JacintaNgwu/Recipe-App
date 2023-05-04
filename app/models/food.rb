class Food < ApplicationRecord
  belongs_to :user
  has_many :foods, foreign_key: :foods

  validates :user_id, presence: true
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :measurement_unit, presence: true, length: { minimum: 2, maximum: 10 }
  validates :unit_price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
