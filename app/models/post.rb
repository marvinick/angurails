class Post < ActiveRecord::Base

	validates_presence_of :title
	belongs_to :user
	has_many :pictures

 before_save :generate_slug

	def to_param
		self.slug
	end

	def generate_slug
		self.slug = self.title.gsub(" ", "-").downcase
	end
end
