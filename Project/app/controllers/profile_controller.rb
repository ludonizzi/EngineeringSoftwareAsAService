class ProfileController < ApplicationController

    before_action :authenticate_user!

    def show
        id = params[:id]
        @user= current_user

    end

    def new
    end

end
