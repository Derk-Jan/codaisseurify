class SongsController < ApplicationController

before_action :set_song, only: [:show, :edit, :update]

  def  index
    @songs = current_artist.songs
  end

  def show

  end

  def new
    @song = current_artist.songs.build
  end

  def create
  @song = current_artist.songs.build(song_params)
  end

def edit
  if @song.save
    redirect_to @song, notice: "song successfully created"
  else
    render :new
  end
end

  def update
    if @song.update(song_params)
      redirect_to @song, notice: "song successfully updated"
    else
      render :edit
    end
  end

private
  def set_song
    @song = song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :composer, :album)
  end
end
