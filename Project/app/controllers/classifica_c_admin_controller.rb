class ClassificaCAdminController < ApplicationController
  def table_admin
    @var = Integer(params[:id])
    @contatore = 0

    @users = User.all.order(created_at: :desc)


  end


end
