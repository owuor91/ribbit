class UsersController < ApplicationController
	def new
		@user = User.new
	end

	private
	def user_params
		params.require(:user).permit(:avatar_url, :email, :name, :password, :password_confirmation, :username)
	end
end
