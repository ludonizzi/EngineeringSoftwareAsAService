class ClassificaCController < ApplicationController
  def table
    @users = User.all.order(vittorie: :desc, sconfitte: :desc)
    @contatore = 0
    @var = params[:id]
#    @users.each do |user|
#     user.vittorie = user.id
#     user.sconfitte = 5
#    end

  end
end
