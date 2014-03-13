class PostsController < ApplicationController
	def show
		@post = Post.find(params[:id])
	end

	def create
		# @post = Post.
	end

	private

		def post_params
			params.require(:post).permit(:title, :youtube_url, :description, :category)
		end
end