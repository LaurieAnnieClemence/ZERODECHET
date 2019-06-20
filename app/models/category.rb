class Category < ApplicationRecord
  has_many :wastes

  validates :name, uniqueness: { scope: :name }
end
