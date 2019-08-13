class CombattiController < ApplicationController
    before_action :authenticate_user!

    def precomb
        @user = User.find(current_user.id)

    end
    def postcomb
	@user = User.find(current_user.id)
	@max = User.maximum("id")
	@id = current_user.id
	@id2 = (Random.rand(1..10))
	
        while (@id2 == 1 || @id2 > @max || @id2 == @id) do
		@id2 = (Random.rand(1..10))
		if (@id2 != 1 && @id2 <= @max && @id2 != @id && User.find(@id2).clan == User.find(current_user.id).clan)
			@id2 = 1
		end
	end
	@user2 = User.find(@id2)
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
