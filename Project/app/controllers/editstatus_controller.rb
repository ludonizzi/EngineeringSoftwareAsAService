class EditstatusController < ApplicationController

    def edit
        @user = User.find(params[:id])
        @status = @user.status
    end

    def update
        @var = Integer(params[:id])
        @user = User.find(params[:id])
        @user.update(status: params[:user][:status])

        redirect_to profile_path(@var)
    end


end
