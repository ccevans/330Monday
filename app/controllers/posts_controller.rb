class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
	    @posts = Post.all.order("RANDOM()")

	end

	def show

		@random_posts = Post.where.not(id: @post).order("RANDOM()").take(5)

		if @post == Post.last
			@next_post = Post.order(id: :asc).first
		else
			@next_post = Post.where("id > ?", @post).order(id: :asc).first
		end

		if @post == Post.first
			@previous_post = Post.order(id: :asc).last
		else
			@previous_post = Post.where("id < ?", @post).order(id: :desc).first
		end
		
	end

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to root_path
	end

	private

	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :description, :posttype, :image, :link)
	end


end
