class LyricsController < ApplicationController
  def index
  end

  def edit 
  
  end

private
  def lyric_params
    params.require(:lyric).permit(:content, :image).merge()
  end

end
