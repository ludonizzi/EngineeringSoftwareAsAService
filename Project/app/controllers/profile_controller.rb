class ProfileController < ApplicationController

    before_action :authenticate_user!

    def show

        id = params[:id]
        @user= User.find(id)
        @var = @user.id

    end


    def destroy
        user = User.find(params[:id])

        if current_user != user
            if user.destroy
                @clan = Clan.find(user.clan)
                @clan.update_attributes!(:membri => @clan.membri - 1)
            end
        redirect_to admin_path(current_user.id)
        end

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
            redirect_to profile_path(@var)

        else
            @user.update_attributes!(:roles_mask => 2)
            current_user.update_attributes!(:roles_mask => 1)

            redirect_to profile_path(@var)
        end
    end

    def banna_utente
        @var = params[:id]
        @user = User.find(@var)

        @user.update_attributes!(:ban_flag => 1)

        redirect_to profile_path(@var)

    end

    def togli_ban
        @var = params[:id]
        @user = User.find(@var)

        @user.update_attributes!(:ban_flag => 0)

        redirect_to profile_path(@var)

    end

    def cambia_immagine
        @var = params[:id]
        @user = User.find(@var)

        if @user.clan == 1

            if current_user.img_profile == "guerriero.jpeg"
                current_user.update_attributes!(:img_profile => "guerriero1.jpeg")
            elsif current_user.img_profile == "guerriero1.jpeg"
                current_user.update_attributes!(:img_profile => "guerriero2.jpeg")
            elsif current_user.img_profile == "guerriero2.jpeg"
                current_user.update_attributes!(:img_profile => "guerriero3.jpg")
            elsif current_user.img_profile == "guerriero3.jpg"
                current_user.update_attributes!(:img_profile => "guerriero1.jpeg")
            else
                current_user.update_attributes!(:img_profile => "guerriero1.jpeg")
            end


        elsif @user.clan == 2


            if current_user.img_profile == "elfo.jpeg"
                current_user.update_attributes!(:img_profile => "elfo1.jpeg")
            elsif current_user.img_profile == "elfo1.jpeg"
                current_user.update_attributes!(:img_profile => "elfo2.jpeg")
            elsif current_user.img_profile == "elfo2.jpeg"
                current_user.update_attributes!(:img_profile => "elfo3.jpeg")
            elsif current_user.img_profile == "elfo3.jpeg"
                current_user.update_attributes!(:img_profile => "elfo1.jpeg")
            else
                current_user.update_attributes!(:img_profile => "elfo1.jpeg")
            end

        else


          if current_user.img_profile == "orco.jpg"
              current_user.update_attributes!(:img_profile => "orco1.jpeg")
          elsif current_user.img_profile == "orco1.jpeg"
              current_user.update_attributes!(:img_profile => "orco2.jpg")
          elsif current_user.img_profile == "orco2.jpg"
              current_user.update_attributes!(:img_profile => "orco3.jpeg")
          elsif current_user.img_profile == "orco3.jpeg"
              current_user.update_attributes!(:img_profile => "orco1.jpeg")
          else
             current_user.update_attributes!(:img_profile => "orco1.jpeg")
          end
        end

        redirect_to profile_path(@var)
    end

end
