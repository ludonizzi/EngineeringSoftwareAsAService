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
    begin
      @user = User.new sign_up_params

      #CON IL BUG DELLA REGISTRAZIONE NON FA LA PARTE SOTTO E QUINDI NON NOMINA IL CAPOCLAN

      @clan = Clan.find(@user.clan)
      membri = @clan.membri

      if @clan.membri == 0
        @user.update_attributes(:roles_mask => 2)
      end

        variabile = 0
      @users = User.all.order(created_at: :desc)

      @users.each do |user|
          if user.roles_mask == 2
            variabile = 1
          end
      end

      if variabile == 1
        @user.update_attributes(:roles_mask => 2)
      end

    end

    super do |resource|
      resource.roles_mask = "1"
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

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

    #protected

    #def after_sign_up_path_for(resource)
        #redirect_to profile_path
    #end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :nome, :cognome, :status, :data_nascita, :password, :img_profile, :clan])
   end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :nome, :cognome, :status])
  end

  # The path used after sign up.




  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
