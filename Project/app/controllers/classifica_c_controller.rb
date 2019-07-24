class ClassificaCController < ApplicationController
  def table
    @users = User.all.order(created_at: :desc)
    @users.each do |user|
      user.vittorie = user.id
      user.sconfitte = 5
     end

  end
end
