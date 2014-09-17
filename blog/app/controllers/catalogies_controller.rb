class CatalogiesController < ApplicationController
	def new
		@catalogy= Catalogy.new
	end

	def create
		@catalogy= Catalogy.new(catalogy_params)
 
 		@catalogy.save
  		redirect_to @catalogy
	end

	def show
		@catalogy = Catalogy.find(params[:id])
	end

	def index
		params[:per_page] ||= 1
		@catalogy = Catalogy.page(params[:page]).per(6)
	end

	private
  		def catalogy_params
    		params.require(:catalogy).permit(:title, :text)
  		end

	
end
