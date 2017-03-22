class Post < ApplicationRecord
	has_many :tagged_posts
	has_many :tags, through: :tagged_posts

	def all_tags=(names)
  		self.tags = names.split(",").map do |name|
      		Tag.where(name: name.strip).first_or_create!
  		end
	end

	def all_tags
	  	self.tags.map(&:name).join(", ")
	end

	def self.tagged_with(name)
  		Tag.find_by_name!(name).posts
	end
end