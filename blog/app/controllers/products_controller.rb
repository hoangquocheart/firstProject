class ProductsController < ApplicationController
	def new
		@product= Product.new
	end

	def create
		@product= Product.new(product_params)
 
 		@product.save
  		redirect_to @product
	end

	def show
		@product = Product.find(params[:id])
	end

	def index
		params[:per_page] ||= 1
		params[:catalogyId] ||= 0
		@id = params.require(:catalogyId);
		if @id.to_f >0
			@product = Product.where(catalogy: @id).page(params[:page]).per(6)
		else
			@product = Product.page(params[:page]).per(6)
		end
	end

	private
  		def product_params
    		params.require(:product).permit(:name, :text, :catalogy)
  		end
end
