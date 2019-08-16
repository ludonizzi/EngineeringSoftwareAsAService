class InfocController < ApplicationController

  def infoclan
        id = params[:id]
        @user= current_user
        @clan1 = Clan.find(1)
        @clan2 = Clan.find(2)
        @clan3 = Clan.find(3)

        membri = 0
        @users = User.all.order(created_at: :desc)
        @clan = Clan.find(@user.clan)

        @users.each do |user|
            if user.clan == @clan.id
                membri = membri + 1
            end
        end

        @clan.update_attributes!(:membri => membri)

    end

end
