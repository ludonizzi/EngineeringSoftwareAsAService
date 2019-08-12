class InfocController < ApplicationController
  def infoclan
    id = params[:id]
    @user= current_user

  end
end
