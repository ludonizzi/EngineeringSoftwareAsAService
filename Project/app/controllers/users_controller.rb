class UsersController < ApplicationController
    	before_action :authenticate_user!
	def update
  		@user = User.find(params[:id])
  		@user.update(att: params[:user][:att], def: params[:user][:def], arm: params[:user][:arm])
	end
end
