class ReviewsController < ApplicationController
  before_action 'require_user'

  def create
    @video = Video.find(params[:video_id])
    review = @video.reviews.build(params[:review].merge!(user: current_user).permit!)
    if review.save
      redirect_to @video
    else
      render 'videos/show'
      @reviews = @video.reviews.reload
    end
  end

end
