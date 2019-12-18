class Duck < ApplicationRecord
  belongs_to :student

  def student_name
    self.student.name
  end

  def student_mod
    self.student.mod
  end
end
