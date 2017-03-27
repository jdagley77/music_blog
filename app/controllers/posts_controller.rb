class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

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
		@news = MtvNews.news_feed
		# sets first user to sign up as an admin user
		if current_user == User.first && !current_user.try(:admin?) && User.count == 1
  			current_user.update_attribute :admin, true
		end

		if params[:tag]
    		@posts = Post.tagged_with(params[:tag])
  		else
    		@posts = Post.all
  		end
  		@posts = @posts.order(created_at: :desc).paginate(page:params[:page], per_page: 5 )
	end

	def show 
		@post = Post.find(params[:id])
	end

	private
		def post_params
  			params.require(:post).permit(:title, :body, :all_tags)
		end
end