require 'test_helper'

class ArtistTest < ActiveSupport::TestCase

  def setup
    @artist = Artist.new(name: "Ricky Jackson")
  end

  test "should be valid" do
    assert @artist.valid?
  end

  test "name should be present" do
    @artist.name = " "
    assert_not @artist.valid?
  end

  test "name should be less than 30 characters" do
    @artist.name = "a" * 31
    assert_not @artist.valid?
  end
end
