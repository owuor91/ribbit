class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save 
			session[:user_id] = @user.id
			redirect_to @user, notice: "Thanks for signing up on Ribbit"
		else
			render 'new'
		end
		
	end

	def show
		@user = User.find(params[:id])
		@ribbit = Ribbit.new
	end

	private
	def user_params
		params.require(:user).permit(:avatar_url, :email, :name, :password, :password_confirmation, :username)
	end
end
