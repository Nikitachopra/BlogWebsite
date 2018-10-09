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
		@articles = Article.all.order('created_at DESC')
		@articles = article_search(params[:sq],@articles) if params[:sq] && params[:sq].length > 1
		@articles = @articles.page(params[:page]).per(6)
	end

	def show
		@article = Article.find(params[:id])
		@articles = Article.all
	end
	def new_page
	end
	  # Article Search
	  def article_search(query, list_articles)
	    articles = Article.arel_table
	    search_articles = list_articles.where("title LIKE ?","%#{query}%")
	    return search_articles
	  end
end
