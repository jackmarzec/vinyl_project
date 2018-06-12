require 'test_helper'

class VinylTest < ActiveSupport::TestCase

  def setup
    @vinyl = Vinyl.new(title: "The Jacksons", date: "11/08/17")
  end

  test "vinyl should be valid" do
    assert @vinyl.valid?
  end

  test "title should be present" do
    @vinyl.title = " "
    assert_not @vinyl.valid?
  end

  test "date should be present" do
    @vinyl.date = " "
    assert_not @vinyl.valid?
  end

  test "date shouldn't be less than 8 characters" do
    @vinyl.date = "a" * 4
    assert_not @vinyl.valid?
  end

  test "date shouldn't be more than 8 characters" do
    @vinyl.date = "a" * 4
    assert_not @vinyl.valid?
  end
end
