class InfocAdminController < ApplicationController


  def infoclan_admin
    @var = Integer(params[:id])


    @clan1 = Clan.find(1)
    @clan2 = Clan.find(2)
    @clan3 = Clan.find(3)

    membri1 = 0
    membri2 = 0
    membri3 = 0

    @users = User.all.order(created_at: :desc)

    @users.each do |user|
        if user.clan == @clan1.id
            membri1 = membri1 + 1
        end
    end

    @users.each do |user|
        if user.clan == @clan2.id
            membri2 = membri2 + 1
        end
    end

    @users.each do |user|
        if user.clan == @clan3.id
            membri3 = membri3 + 1
        end
    end

    @clan1.update_attributes!(:membri => membri1)
    @clan2.update_attributes!(:membri => membri2)
    @clan3.update_attributes!(:membri => membri3)

    vitt = 0
    scon = 0

    @users.each do |user|
        vitt = vitt + user.vittorie
        scon = scon + user.sconfitte
    end
  end


end
