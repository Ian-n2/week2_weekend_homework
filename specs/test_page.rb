require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../Room')
require_relative('../Guest')
require_relative('../Drinks')
require_relative('../song')

class Testpage < Minitest::Test

  def setup
    @room1 = Room.new("Room1")

    @guest1 = Guest.new("Joe", 20, "Code Monkey")
    @guest2 = Guest.new("peter", 20, "Happy Birthday")
    @guest3 = Guest.new("Ian", 20, "Billion Dollar Babies")
    @Guest4 = Guest.new("Del", 20, "Super Bass")

    @song1 = Song.new("Code Monkey")
    @song2 = Song.new("song 2")
    @song3 = Song.new("song 3")

  end

  def test_add_song
    @room1.add_song(@song1)
    assert_equal(1, @room1.count_songs)
  end
  def test_check_wallet
    assert_equal(20, @guest1.wallet)
  end

  # def test_buy_room
  #   @guest1.buy_room("Room 1")
  #   assert_equal( , @guest1.check_wallet)
  # end

  def test_check_drinks
    assert_equal(0, @room1.check_drinks)
  end


  def test_check_room
    assert_equal(0, @room1.check_room)
  end


  def test_add_to_room
    @room1.add_to_room
    @room1.add_to_room
    @room1.check_room
    assert_equal(2, @room1.check_room)
  end

  def test_room_full
    @room1.add_to_room
    @room1.add_to_room
    @room1.add_to_room
    @room1.add_to_room
    assert_equal("Room is full", @room1.add_to_room)
  end


  def test_fav_song
    @room1.add_song(@song1)
    @guest1.fav_song(@room1)
    assert_equal("LOVE THIS TUNE!", @guest1.fav_song(@room1))
  end

  def test_check_tab
    assert_equal(0, @guest1.check_tab)
  end

  def test_leave_room
    @room1.add_to_room
    @room1.add_to_room
    @room1.leave_room
    assert_equal(1, @room1.check_room)
  end

  def test_add_drink
    @room1.add_drink
    @room1.add_drink
    assert_equal(2, @room1.check_drinks)
  end

  def test_buy_drink
    @room1.add_drink
    @room1.add_drink
    @guest1.buy_drink(@room1)
    assert_equal(1, @room1.check_drinks)
    assert_equal(2, @guest1.check_tab)
  end

def test_pay_tab
@room1.add_drink
@room1.add_drink
@room1.add_drink
@guest1.buy_room(@room1)
@room1.add_to_room
@guest1.buy_drink(@room1)
@guest1.buy_drink(@room1)
assert_equal(9, @guest1.check_tab)
@guest1.pay_tab
assert_equal(0, @guest1.check_tab)
assert_equal(11, @guest1.check_wallet)
end

end
