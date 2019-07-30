class ProfileController < ApplicationController

    before_action :authenticate_user!

    def show
        id = params[:id]
        @user= current_user
        @user.vittorie = @user.id
        @user.sconfitte = 5
    end

    def index
        redirect_to profile_path(current_user.id)
    end

    def new
    end

end
