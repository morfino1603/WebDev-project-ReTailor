class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @product = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @tailor = Tailor.find(params[:tailor_id])
    @product = @tailor.products.new
  end

  # GET /products/1/edit
  def edit
	@tailor = Tailor.find(params[:tailor_id])
	@product = @tailor.products.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @tailor = Tailor.find(params[:tailor_id])
	@product = @tailor.products.new
    @product.product_name = params[:product][:product_name]
	@product.product_description = params[:product][:product_description]
	@product.price = params[:product][:price]
	@product.save
	redirect_to tailor_path(@tailor)
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
	@tailor = Tailor.find(params[:tailor_id])
	@product = @tailor.products.find(params[:id])
	@product.update_attributes(product_params)
	redirect_to tailor_path(@tailor)
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
	@tailor = Tailor.find(params[:tailor_id])
    @product.destroy
    redirect_to tailor_path(@tailor)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_name, :product_description, :price)
    end
end
