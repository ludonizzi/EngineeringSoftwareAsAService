class ProfileController < ApplicationController

    before_action :authenticate_user!
    def show
        @prova = "prova"
    end

end
