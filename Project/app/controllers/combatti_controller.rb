class CombattiController < ApplicationController
    before_action :authenticate_user!

    def precomb
        @user = User.find(current_user.id)

    end

end
