class InfocController < ApplicationController
  def infoclan
    id = params[:id]
    @user= current_user
    @clan1 = Clan.find(1)
    @clan2 = Clan.find(2)
    @clan3 = Clan.find(3)



  end
end
