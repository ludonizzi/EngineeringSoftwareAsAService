class ClassificaCAdminController < ApplicationController
  def table_admin
    @var = Integer(params[:id])
    @contatore = 0

    @users = User.all.order(vittorie: :desc, sconfitte: :desc)


  end


end
