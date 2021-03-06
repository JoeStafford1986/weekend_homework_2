require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Bohemian Rhapsody")
  end

  def test_can_create_song()
    assert_equal(Song, @song.class())
  end

  def test_get_name
    assert_equal("Bohemian Rhapsody", @song.name())
  end

end
