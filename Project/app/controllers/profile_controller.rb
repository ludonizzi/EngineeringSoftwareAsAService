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
            @users = User.all.order(created_at: :desc)
            @users.each do |us|
                if us.roles_mask == 2
                    us.update_attributes!(:roles_mask => 1)
                end
            end

            @user.update_attributes!(:roles_mask => 2)
            redirect_to admin_path(current_user.id)

        else
            @user.update_attributes!(:roles_mask => 2)
            current_user.update_attributes!(:roles_mask => 1)



            redirect_to profile_path(current_user.id)
        end
    end


end
