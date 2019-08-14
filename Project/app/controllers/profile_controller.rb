class ProfileController < ApplicationController

    before_action :authenticate_user!

    def show
        id = params[:id]
        @user= User.find(id)

        @var = @user.id
        current_user.vittorie = @user.id
        current_user.sconfitte = 5
    end

    def index
        redirect_to profile_path(current_user.id)
    end

    def new
    end

    def nomina_capoclan
        @var = params[:id]
        @user = User.find(@var)

        if current_user.roles_mask == 4
        #FUNZIONE DI RICERCA PER TROVARE L ALTRO CAPOCLAN ED ELIMINARLO
            @user.update_attributes!(:roles_mask => 2)

        else
            @user.update_attributes!(:roles_mask => 2)
            current_user.update_attributes!(:roles_mask => 1)



        redirect_to profile_path(current_user.id)
    end


end
