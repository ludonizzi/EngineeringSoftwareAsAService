class GoogleCalendarController < ApplicationController
  #funzione per il  calendar degli utenti
  #viene richiamata dopo il log in di google
  def callback
    client = Signet::OAuth2::Client.new(client_options)
    client.code = params[:code]
    
    response = client.fetch_access_token!

    session[:authorization] = response

    redirect_to google_calendar_path
  end

  def redirect
    client = Signet::OAuth2::Client.new(client_options)

    redirect_to client.authorization_uri.to_s
  end

  private

  def client_options
    {
      client_id: Rails.application.secrets.google_client_id,
      client_secret: Rails.application.secrets.google_client_secret,
      authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
      token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
      scope: Google::Apis::CalendarV3::AUTH_CALENDAR,
      redirect_uri: callback_url
    }
  end
end
