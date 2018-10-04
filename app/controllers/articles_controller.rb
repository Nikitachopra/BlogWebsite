class ArticlesController < ApplicationController
	def new
		
	end
	def create
		# byebug
		@article = Article.new
		@article.title = params[:article][:title]
		@article.description = params[:article][:description]
		@article.image = params[:article][:image]
		@article.save
	end
	def index
		
	end
end
