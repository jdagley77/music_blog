class PostsController < ApplicationController

	def new 
	end
	
	def index
		@posts = Post.all
		@news = MtvNews.news_feed
	end

end