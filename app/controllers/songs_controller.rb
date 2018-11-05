class SongsController < ApplicationController
  def index
    songs = Song.all
    render :json => songs.as_json(only: [:id, :title, :artist, :year]), status: :ok
  end

  def random
    song_list = []
    12.times do
      song_list << Song.all[rand(0..Song.all.count-1)]
    end

    render :json => song_list.as_json(only: [:id, :title, :artist, :year]), status: :ok
  end
end
