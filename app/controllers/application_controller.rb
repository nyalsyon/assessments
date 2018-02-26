class ApplicationController < ActionController::API
	include ActionController::HttpAuthentication::Basic::ControllerMethods
	include ActionController::HttpAuthentication::Token::ControllerMethods
	before_action :authenticate
	include ActionController::MimeResponds

	def authenticate
	  authenticate_or_request_with_http_basic do |source_app, api_key|
	    client = ClientAccess.find_by_name(source_app)
	    client && client.token == api_key
	  end
	end
end
