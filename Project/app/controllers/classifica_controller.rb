class ClassificaController < ApplicationController
  def table
    @users = User.all.order(vittorie: :desc, sconfitte: :desc)
    @contatore = 0
#    @users.each do |user|
#     user.vittorie = 
#     user.sconfitte = 5
#    end
  end

end
