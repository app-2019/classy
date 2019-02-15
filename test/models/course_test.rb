require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "count students through courses" do
    assert_equal 2, courses(:hci).students.length
  end
  test "year must be four digits, now or in the future" do
    current_year = Date.today.year
    @course = courses(:hci)
    assert_equal 4, @course.year.to_s.length
    @course.year = 55555
    assert_not @course.valid?
    @course.year = "two-thousand and twenty"
    assert_not @course.valid?
    @course.year = current_year - 1
    assert_not @course.valid?
    @course.year = current_year
    assert @course.valid?
    @course.year = current_year + 1
    assert @course.valid?
  end
end
