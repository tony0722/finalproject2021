class UserController < ApplicationController
    
    
    def log_in
        
        
        session[:login] =current_user? 
        flash[:notice] = "you log in "
        redirect_to :controller => :items
        
    end    
    
    
    
    def log_out
    
    session[:login] = nil
    flash[:notice] = "Ok See You Later"
    redirect_to :controller => :items
    end
    
    def create
          
          
    user = User.find_by(email: params[:session][:email])
    
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to :root
    else
      flash.now[:danger] = 'Invalid email/password'
     # render 'new'
        redirect_to :controller => :items
   
      
    end
    
      end 
    
    
    
end
