class Picture < ActiveRecord::Base

  validates_presence_of :title
  belongs_to :user
  belongs_to :post
  mount_uploader :image, ImageUploader
end
