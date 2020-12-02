class StaticPagesController < ApplicationController
  def home

  end

  def help
        # session[:cart] = nil
  end

  def about
    
  end

  def contact
    
   
  end
  
  
  def adminsection
    @orders = Order.all
    
  end
  
  
  def paid
    @order = Order.last
    
    @order.update_attribute(:status, 'This Has Been Paid')
    
    
  end
end
