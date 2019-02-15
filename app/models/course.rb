class Course < ApplicationRecord
  has_and_belongs_to_many :students
  validates :year,
    numericality: { integer_only: true, greater_than_or_equal_to: Date.today.year },
    length: { is: 4 }
  validates :term, inclusion: { in: %w(Spring Summer Fall), message: "%{value} is not a valid term" }
  validates :identifier, uniqueness: { scope: [:term, :year]}
  # Course title must be unique with regard to the identifier and year
  validates :title, uniqueness: { scope: [:identifier, :year] }
end
