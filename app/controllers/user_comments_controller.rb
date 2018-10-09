class UserCommentsController < ApplicationController
	def create
		@comment = UserComment.new(comments_params)
		if @comment.save
			redirect_to article_path(params[:user_comment][:article_id])
		end
	end
	private
	def comments_params
		params.require(:user_comment).permit(:name, :email, :website, :article_id, :content)
	end
end
