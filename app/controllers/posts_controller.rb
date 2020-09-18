class PostsController < ApplicationController
	include PostsHelper
	before_action :authenticate_user!, only: %i[new create]

	

	def index
		@posts=Post.all
	end

	def new
		@post=Post.new()
	end

	def create
		
		@user=current_user
		@post=@user.posts.build(posts_params)
		if @post.save
			flash.notice = "Post '#{@post.title}' Created!"
			redirect_to posts_path
		else
			render "new"
		end
		#.notice = "Post '#{@post.title}' Created!"
		#redirect_to posts_path

	end

	



end
