class ProfileController < ApplicationController

    before_action :authenticate_user!
    def show
        @utente = current_user.email
    end

    def new
        authorize! :read, Profilo, :message => "Non puoi accedere alla risorsa selezionata"
    end

end
