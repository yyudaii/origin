class LyricsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def index
    @lyrics = Lyric.all
    if @lyrics.empty?
      @lyrics = [OpenStruct.new(title: "ダミータイトル", lyric: "これはダミーのコンテンツです。",image:"music_album_cover.png", created_at: Time.now, image: nil)]
    end
  end

  def show
  end

  def new
    @lyric = Lyric.new
  end

  def create
    @lyric = Lyric.new(lyric_params)
    if @lyric.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @lyric.destroy
    redirect_to posts_url
  end
end
private

  def set_post
    @lyric = Post.find(params[:id])
  end

  def lyric_params
    params.require(:lyric).permit(:image, :lyric,:image).merge(user_id: current_user.id)
  end

