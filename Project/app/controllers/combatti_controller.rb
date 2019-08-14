class CombattiController < ApplicationController
    before_action :authenticate_user!

    def precomb
        @user = User.find(current_user.id)

    end
    def postcomb
	@user = User.find(current_user.id)
	@max = User.maximum("id")
	@id = current_user.id
	@id2 = (Random.rand(1..20))
	
        while (@id2 == 1 || @id2 > @max || @id2 == @id || User.exists?(id: @id2)==false) do
		@id2 = (Random.rand(1..20))
		if (User.exists?(id: @id2)==false)
			@id2 = 1
		elsif ((User.find(@id2).clan == User.find(current_user.id).clan) && (@id2 <= @max) && (@id2 != @id) && (@id2 != 1))
			@id2 = 1
		end
	end
	@user2 = User.find(@id2)
	$user = @user
	$user2 = @user2
    end

    def results
	@u = $user
        @u2 = $user2
	@att = 0
	@def = 0
	@att2 = 0
	@def2 = 0
    end

end
