class Duck < ApplicationRecord
    belongs_to :student

    validates :name, presence: true 
    validates :student_id, presence: true 
end
