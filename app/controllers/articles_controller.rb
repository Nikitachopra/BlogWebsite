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
		@article = Article.all
		@article = @article.page(params[:page]).per(6)
	end

	def show
		@article = Article.find(params[:id])
	end
end
