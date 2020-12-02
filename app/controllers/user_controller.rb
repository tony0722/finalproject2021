class UserController < ApplicationController
    
    
    def pretendlogin
        session[:login] = 1
        flash[:notice] = "Yippee you logged in .... but you are pretending"
        redirect_to :controller => :items
        
    end    
    
    
    
    def pretendlogout
    
    session[:login] = nil
    flash[:notice] = "Ok See You Later"
    redirect_to :controller => :items
    end
    
    
end
