require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  setup do
    # Create instances for more readable, Rails-like tests
    @melvin = students(:melvin)
    @jenny = students(:jenny)
  end

  test "count courses through students" do
    assert_equal 2, @melvin.courses.length
    assert_equal 1, @jenny.courses.length
  end
  test "show full name in custom method" do
    assert_equal "#{@melvin.first_name} #{@melvin.last_name}", @melvin.full_name
  end
end
