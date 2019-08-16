class ClanController < ApplicationController

    def edit
        @clan = Clan.find(params[:id])
        @status_clan = @clan.status_clan
    end

    def update
        @var = Integer(params[:id])
        @clan = Clan.find(params[:id])
        @clan.update(status_clan: params[:clan][:status_clan])



        if current_user.roles_mask == 4
            redirect_to infoc_admin_path(id: params[:id])

        else
            redirect_to infoc_path
        end
    end


end
