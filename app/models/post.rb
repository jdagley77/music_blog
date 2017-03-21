class Post < ApplicationRecord
	has_many :tagged_posts
	has_many :tags, through: :tagged_posts
end