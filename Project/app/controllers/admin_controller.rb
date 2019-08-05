class AdminController < ApplicationController

    def show
        #authorize! :show, Admin, :message => "Non hai i permessi per accedere come Admin"
        @admin = User.find(current_user.id)
    end
end
