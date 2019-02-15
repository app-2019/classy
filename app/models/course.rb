class Course < ApplicationRecord
  has_and_belongs_to_many :students
  validates :year,
    numericality: { integer_only: true, greater_than_or_equal_to: Date.today.year },
    length: { is: 4 }
end
