class ArticlesController < ApplicationController
	def create
		@article = Article.new(article_params)
 
 		@article.save
  		redirect_to @article
	end

	def new
	end

	def test
	end

	private
  		def article_params
    		params.require(:article).permit(:title, :text)
  		end
end
