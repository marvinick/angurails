class Picture < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  after_save :enqueue_image

  def enqueue_image
    ImageWorker.perform_async(id, key) if key.present?
  end

  class ImageWorker
    include Sidekiq::Worker

    def perform(id, key)
      picture = Painting.find(id)
      picture.key = key
      picture.remote_image_url = picture.image.direct_fog_url(with_path: true)
      picture.save!
    end
  end
end
