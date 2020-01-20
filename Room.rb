class Room

  attr_accessor :name, :drinks, :till, :guest, :songs

  def initialize(name_str)
    @name = name_str

    @drinks = 0
    @till = 0
    @guest = 0
    @songs = []

  end
  def check_drinks
    return @drinks
  end

  def count_songs
    return @songs.count
  end

  def check_room
    return @guest
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_to_room
    if @guest == 3
      return "Room is full"
    else @guest += 1
    end
  end

  def add_drink
    @drinks += 1
  end

  def leave_room
    if @guest == 0
      return "Room is emtpy"
    else @guest -= 1
    end
  end

  # def buy_drink(guest)
  #   if @drinks >= 0
  #     @drinks -= 1
  #     guest.tab += 2
  #   else
  #     return "sorry sold out"
  #   end
  # end



end
