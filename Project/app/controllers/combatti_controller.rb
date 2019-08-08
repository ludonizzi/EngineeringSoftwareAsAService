class CombattiController < ApplicationController
    before_action :authenticate_user!

    def precomb
        @user = User.find(current_user.id)

    end
    def postcomb
	@user = User.find(current_user.id)
        @user2 = User.find(current_user.id+1)
    end

end
