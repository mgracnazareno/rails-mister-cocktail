class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destory

  validates :name, presence: true, uniqueness: true
end
