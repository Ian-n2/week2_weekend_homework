class Guest

  attr_reader :name, :Fav_song, :wallet
  attr_writer :wallet, :tab

  def initialize(name, amount, song_name)
    @name = name
    @wallet = amount
    @Fav_song = song_name
    @tab = 0

  end

  def check_wallet
    return @wallet
  end

  def check_song
    return @Fav_song
  end

  def buy_room(name)
    @tab += 5
  end

  def check_tab
    return @tab
  end


  def fav_song(room)
  for song in room.songs
      if song.name == @Fav_song
        return "LOVE THIS TUNE!"
      end
    end
  end

  def buy_drink(room)
    if room.drinks >= 0
      room.drinks -= 1
      @tab += 2
    else
      return "sorry sold out"
    end
  end

def pay_tab
  if
   @wallet >= @tab
   @wallet -= @tab
   @tab = 0  
 else
   @wallet -= @wallet
   return "Follow me round the back sir"
   end
 return @Wallet
end


end
