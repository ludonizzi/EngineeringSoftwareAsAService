class CombattiController < ApplicationController
    before_action :authenticate_user!

    def precomb
        @user = User.find(current_user.id)

    end
    def postcomb
	@user = User.find(current_user.id)
        @user2 = User.find(current_user.id+1)
    end

    def results
	@u = User.find(current_user.id)
        @u2 = User.find(current_user.id+1)
	@att = 0
	@def = 0
	@att2 = 0
	@def2 = 0
    end

end
