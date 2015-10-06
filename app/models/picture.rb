class Picture < ActiveRecord::Base
  belongs_to :visitor
  mount_uploader :image, ImageUploader
end
