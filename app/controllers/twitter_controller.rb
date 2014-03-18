class TwitterController < ApplicationController
  def index
  end

  def login
  	
  	oauth.set_callback_url("http://#{request.host}#{":#{request.port}" unless request.port == 80}/twitter/finalize")

  	session[:request_token] = oauth.request_token.token
  	session[:request_secret] = oauth.request_token.secret

  	redirect_url = oauth.request_token.authorize_url
  	redirect_url = "http://"+redirect_url unless redirect_url.match(/^http:\/\//)
  	redirect_to redirect_url
  end

  def finalize
  end

  private

  def oauth
  		@oauth ||= Twitter::OAuth.new(APP_CONFIG[:twitter][:consumer_key], APP_CONFIG[:twitter][:consumer_secret])
  	# @oauth ||= Twitter::Client.new(:consumer_key => APP_CONFIG[:twitter][:consumer_key], :consumer_secret => APP_CONFIG[:twitter][:consumer_secret])



  end

end
