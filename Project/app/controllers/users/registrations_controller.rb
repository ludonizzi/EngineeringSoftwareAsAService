# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource



  def create
    test_username =  User.find_by_username(params[:user][:username])
    if(test_username)
      flash.keep[:danger] = "Attenzione: Username già in uso"
      redirect_to '/register'
      return
    end

    test_email =  User.find_by_email(params[:user][:email])
    if(test_email)
      flash.keep[:danger] = "Attenzione: Email già in uso"
      redirect_to '/register'
      return
    end

    test_clan = (params[:user][:clan])
    if test_clan == ""
        flash.keep[:danger] = "Attenzione: Clan non selezionato"
      redirect_to '/register'
      return


    else
        test_clan = Integer(test_clan)
        if(test_clan !=1 && test_clan != 2 && test_clan != 3)
          flash.keep[:danger] = "Attenzione: Clan non selezionato"
          redirect_to '/register'
          return
        end
    end


    super do |resource|

         resource.roles_mask = "1"

          @clan = Clan.find(resource.clan)
          membri = @clan.membri
          membri = membri + 1
          @clan.update_attributes!(:membri => membri)

          if @clan.membri == 0
            resource.roles_mask = "2"
          end

          variabile = 0
          @users = User.all.order(created_at: :desc)

          @users.each do |user|
              if user.roles_mask == 2
                variabile = 1
              end
            end

          if variabile == 0
             resource.roles_mask = "2"
          end

    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

    #protected

    #def after_sign_in_path_for(resource)
        #redirect_to profile_path
    #end

    protected

    def after_sign_up_path_for(current_user)
        profile_path(current_user.id)
    end

    protected

    def after_update_path_for(current_user)
        profile_path(current_user.id)
    end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :nome, :cognome, :status, :data_nascita, :password, :img_profile, :clan])
   end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :nome, :cognome, :status, :username])
  end

  # The path used after sign up.




  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
