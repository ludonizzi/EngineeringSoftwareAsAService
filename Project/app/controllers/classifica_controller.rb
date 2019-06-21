class ClassificaController < ApplicationController
  def table
    @users = User.all
    #@users.each do |user|
    #user.vittorie = 1
    #user.sconfitte = 13
    #end
  end
end
