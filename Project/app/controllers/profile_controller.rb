class ProfileController < ApplicationController

    before_action :authenticate_user!

    def show
        id = params[:id]
        @user= current_user
    end

    def index
        redirect_to profile_path(current_user.id)
    end

    def new
    end

end
