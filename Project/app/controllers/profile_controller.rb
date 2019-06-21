class ProfileController < ApplicationController

    before_action :authenticate_user!

    def index
        @user= current_user
    end

    def show
        id = params[:id]

    end

    def new
    end

end
