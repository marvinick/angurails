class Post < ActiveRecord::Base

	validates_presence_of :title
	belongs_to :user
	has_many :pictures

	after_validation :generate_slug

	def generate_slug
		self.slug = self.title.gsub(" ", "-").downcase
	end
end
