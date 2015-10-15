class Picture < ActiveRecord::Base

  validates_presence_of :title, :price, :description
  belongs_to :user
  belongs_to :post
  mount_uploader :image, ImageUploader

  # before_save :generate_slug

  # def to_param
  #   self.slug
  # end

  def generate_slug
    self.slug = self.title.gsub(" ", "-")
  end

end
