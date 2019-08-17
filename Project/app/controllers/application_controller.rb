class ApplicationController < ActionController::Base


    protect_from_forgery with: :exception

    def set_current_user
        @current_user |= User.where(:id => session[:id])
    end






    def after_sign_up_path_for(current_user)
        profile_path(current_user.id)
    end

    def after_sign_in_path_for(current_user)
        if current_user.roles_mask == 4
            admin_path(current_user.id)

        elsif current_user.ban_flag == 1
            sign_out current_user
            flash.keep[:error] = "Sei stato bannato! Contattaci per saperne di più"
            root_path

        else
            profile_path(current_user.id)
        end
    end


    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path, :alert => exception.message
    end

end
