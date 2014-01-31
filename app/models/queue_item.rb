class QueueItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :video

  delegate :category, to: :video

  validates_numericality_of :position, {only_integer: true }

  #delegate does the same as def category
  #def category
  #  video.category
  #end

  def video_title
    video.title
  end
  def rating
    review.rating if review
  end


  def rating=(new_rating)
    if review
      review.update_column(:rating, new_rating)
    else
      review = Review.new(video: video, user: user, rating: new_rating)
      review.save(validate: false)
    end
  end

  def category_name
    video.category.name
  end

  private

  def review
    @review ||= Review.where(user_id: user.id, video_id: video.id).first
  end

end
