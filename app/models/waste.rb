class Waste < ApplicationRecord
  belongs_to :category
  has_many :solutions
  has_many :comments

  validates :name, uniqueness: { scope: :name }
end
