class ApplicationController < ActionController::Base

#Authenticate every request
protect_from_forgery with: :exception
before_action :authenticate_user!

end
