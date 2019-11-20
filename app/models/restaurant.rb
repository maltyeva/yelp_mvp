class Restaurant < ApplicationRecord
  # has_many or has_one
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :stars, inclusion: { in: (1..5)}
end
