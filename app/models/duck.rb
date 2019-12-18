class Duck < ApplicationRecord
  belongs_to :student
  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
