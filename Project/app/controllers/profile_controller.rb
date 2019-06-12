class ProfileController < ApplicationController

    before_action :authenticate_user!

    def index
        @utente = current_user.email
    end

    def show
        id = params[:id]

    end

    def new
    end

end
