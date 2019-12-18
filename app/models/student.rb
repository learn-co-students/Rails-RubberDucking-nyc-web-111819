class Student < ApplicationRecord

  has_many :ducks

  validates :name, :mod, presence: true
  validates :mod, inclusion: {:in => 1..5, message: "needs a number 1-5"}

end
