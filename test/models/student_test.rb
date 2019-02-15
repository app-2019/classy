require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "count courses through students" do
    assert_equal 2, students(:melvin).courses.length
    assert_equal 1, students(:jenny).courses.length
  end
end
