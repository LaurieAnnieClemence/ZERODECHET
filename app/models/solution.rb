class Solution < ApplicationRecord
  belongs_to :waste

  validates :content, uniqueness: { scope: :content }
end
