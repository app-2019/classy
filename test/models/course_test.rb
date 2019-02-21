require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  setup do
    @hci = courses(:hci)
  end

  test "count students through courses" do
    assert_equal 2, @hci.students.length
  end

  test "year must be four digits, now or in the future" do
    current_year = Date.today.year
    assert_equal 4, @hci.year.to_s.length
    @hci.year = 55555
    refute @hci.valid?
    @hci.year = "two-thousand and twenty"
    refute @hci.valid?
    @hci.year = current_year - 1
    refute @hci.valid?
    @hci.year = current_year
    assert @hci.valid?
    @hci.year = current_year + 1
    assert @hci.valid?
  end
  test "term must be either Spring, Summer, or Fall" do
    @course = courses(:hci)
    @course.term = "Autumn"
    assert_not @course.valid?
    ['Spring','Summer','Fall'].each do |t|
      @course.term = t
      assert @course.valid?
    end
  end
  test "course identifier must be unique on a given year and term" do
    @app = courses(:app)
    # Duplicate the app course's identifier from HCI
    @app.identifier = courses(:hci).identifier
    assert_not @app.valid?
    @app.term = "Summer"
    assert @app.valid?
  end
  test "course title must be unique on a given identifier, year, and term" do
    @app = courses(:app)
    # Duplicate the app course's title and identifier from HCI
    @app.identifier = courses(:hci).identifier
    @app.title = courses(:hci).title
    assert_not @app.valid?
  end
end
