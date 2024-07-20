class LyricsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def index
    @lyrics = Lyric.where('created_at >= ?', 24.hours.ago)
  end

  def show
  end

  def new
    @lyric = Post.new
  end

  def create
    @lyric = current_user.posts.build(post_params)
    if @lyric.save
      redirect_to @lyric
    else
      render :new
    end
  end

  def destroy
    @lyric.destroy
    redirect_to posts_url
  end

private

  def set_post
    @lyric = Post.find(params[:id])
  end

  def lyric_params
    params.require(:lyric).permit(:image).merge()
  end

end
