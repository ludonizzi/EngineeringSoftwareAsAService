class InfocAdminController < ApplicationController
  def infoclan_admin
    @var = Integer(params[:id])
    @users = User.all.order(created_at: :desc)
    @clan1 = Clan.find(1)
    @clan2 = Clan.find(2)
    @clan3 = Clan.find(3)
    @users.each do |user|
      user.vittorie = user.id
      user.sconfitte = 5
    end

    vitt = 0
    scon = 0

    @users.each do |user|
        vitt = vitt + user.vittorie
        scon = scon + user.sconfitte
    end
  end
end
