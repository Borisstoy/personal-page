class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all.order('created_at desc').paginate(page: params[:page], :per_page => 5)
	end

	def new
		# sets post to an instance variable
		@post = Post.new
	end

	def create
		@post = Post.new post_params # permits title and content
		if @post.save
			redirect_to @post, notice: "Post successfully saved!"
		else
			render 'new', notice: "Oops, unable to save!" # sif not saved, renders the new form
		end
	end

	def show
		# @post = Post.find(params[:id]), moved to privcate method
	end

	def edit
	end

	def update
		if @post.update post_params
			redirect_to @post, notice: "Your artcile was successfully saved!"
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
			redirect_to posts_path
	end

	private

	def post_params
		# refer to db / migrate
		# slug is part of the friendly_id
		params.require(:post).permit(:title, :content, :slug) 
	end

	def find_post
		@post = Post.friendly.find(params[:id])
	end
end
