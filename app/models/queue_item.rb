class QueueItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :video

  delegate :category, to: :video
  #delegate does the same as def category
  #def category
  #  video.category
  #end

  def video_title
    video.title
  end
  def rating
    review = Review.where(user_id: user.id, video_id: video.id).first
    review.rating if review
  end

  def category_name
    video.category.name
  end

end
