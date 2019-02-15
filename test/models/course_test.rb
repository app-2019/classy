require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "count students through courses" do
    assert_equal 2, courses(:hci).students.length
  end
end
