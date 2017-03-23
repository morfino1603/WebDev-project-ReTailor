class TailorsController < ApplicationController

def index
	@tailor = Tailor.all
end

def new
	@tailor = Tailor.new
end

def create
	@tailor = Tailor.new
	@tailor.tailor_name = params[:tailor][:tailor_name]
	@tailor.tailor_address = params[:tailor][:tailor_address]
	@tailor.tailor_contact = params[:tailor][:tailor_contact]
	@tailor.tailor_username = params[:tailor][:tailor_username]
	@tailor.tailor_password = params[:tailor][:tailor_password]
	@tailor.save
	redirect_to tailor_path(@tailor.id)
end

def show
	@tailor = Tailor.find(params[:id])
	@product = Product.where("tailor_id = ?", @tailor)
end

def destroy
	@tailor = Tailor.find_by(params[:id])
	@tailor.destroy
	redirect_to tailors_path
end

def login
end

def error
end

def check
	if Tailor.exists?(:tailor_username => params[:username]) then
		@user = Tailor.find_by('tailor_username = ?', params[:username])
		if (params[:password])==@user.tailor_password then
			redirect_to tailor_path(@user.id)
		else
			redirect_to '/retailors/tailor_error'
		end
	else
		redirect_to '/retailors/tailor_error'
	end
end

end