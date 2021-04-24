class ApplicationController < ActionController::Base
    
  protect_from_forgery with: :exception
 
  #skip_before_action :verify_authenticity_token
    def default_url_options
    {:locale => I18n.locale}
  end

  
  
end
