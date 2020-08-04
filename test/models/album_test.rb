require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album with one player" do
    players << players(:linkin_park)
    album = Album.new(name: 'Minutes to Midnight', players: players)
    assert album.valid?
  end

  test "valid album with two or more players" do
    players << players(:jay_z, :linkin_park)
    album = Album.new(name: 'Collision Course', players:players)
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of player" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end
end
