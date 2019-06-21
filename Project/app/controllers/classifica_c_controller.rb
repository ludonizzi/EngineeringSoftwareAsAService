class ClassificaCController < ApplicationController
  def table
    @users = User.all
  end
end
