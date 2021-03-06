class LikesController < ApplicationController

  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    @like = current_user.likes.build(bookmark: @bookmark)

    if @like.save
      flash[:notice] = "Liked!"
      redirect_to [@bookmark.topic, @bookmark]
    else
      flash.now[:alert] = "Please try again."
      redirect_to [@bookmark.topic, @bookmark]
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    @like = current_user.likes.find(params[:id])

    if @like.destroy
      flash[:notice] = "Unliked!"
      redirect_to request.referrer
    else
      flash.now[:alert] = "Please try again."
      redirect_to [@bookmark.topic]
    end
  end
end
