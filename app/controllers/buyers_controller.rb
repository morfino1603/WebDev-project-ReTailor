class BuyersController < ApplicationController

def index
	@buyer = Buyer.all
end

def new
	@buyer = Buyer.new()
end

def create
	@buyer = Buyer.new
	@buyer.buyer_name = params[:buyer][:buyer_name]
	@buyer.buyer_address = params[:buyer][:buyer_address]
	@buyer.buyer_contact = params[:buyer][:buyer_contact]
	@buyer.buyer_username = params[:buyer][:buyer_username]
	@buyer.buyer_password = params[:buyer][:buyer_password]
	@buyer.save
	redirect_to buyer_path(@buyer.id)
end

def show
	@buyer = Buyer.find(params[:id])
end

def see_products
	@buyer = Buyer.find(params[:id])
	@products = Product.all
end

def destroy
	@buyer = Buyer.find(params[:id])
	@buyer.destroy
	redirect_to buyers_path
end

def login
end

def error
end

def check
	if Buyer.exists?(:buyer_username => params[:username]) then
		@user = Buyer.find_by('buyer_username = ?', params[:username])
		if (params[:password])==@user.buyer_password then
			redirect_to buyer_path(@user.id)
		else
			redirect_to '/retailors/buyer_error'
		end
	else
		redirect_to '/retailors/buyer_error'
	end
end

end
