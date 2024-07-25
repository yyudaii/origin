class LyricsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
before_action :set_lyric, only: [:show, :destroy]


  def index
    @lyrics = Lyric.all
    if @lyrics.empty?
      @lyrics = [OpenStruct.new(title: "ダミータイトル", lyric: "これはダミーのコンテンツです。", created_at: Time.now, image: nil)]
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

  def set_lyric
    @lyric = Lyric.find(params[:id])
  end

  def lyric_params
    params.require(:lyric).permit(:title,:lyric,:image).merge(user_id: current_user.id)
  end

