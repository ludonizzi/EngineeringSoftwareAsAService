class ClassificaController < ApplicationController
  def table
    @users = User.all
    #@users.each do |user|
    #  user.vittorie = 1
    #  user.sconfitte = 8
    #end
  end
end
