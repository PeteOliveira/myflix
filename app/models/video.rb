class Video < ActiveRecord::Base
  belongs_to :category
  #validates :title, presence: :true
  #validates :description, presence: :true
  # or
  validates_presence_of :description, :title
end
