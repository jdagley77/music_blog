class PostsController < ApplicationController

	def new 
	end

	def create
  		@post = Post.new(post_params)
  		respond_to do |format|
    if @post.save
      	format.js # Will search for create.js.erb
    else
      	format.html { render root_path }
    end
	end
  end
	
	def index
		# @posts = Post.all
		@news = MtvNews.news_feed
		if params[:tag]
    		@posts = Post.tagged_with(params[:tag])
  		else
    		@posts = Post.all
  end
	end

	private
		def post_params
  			params.require(:post).permit(:title, :body, :all_tags)
		end
end