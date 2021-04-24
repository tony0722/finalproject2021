class CartController < ApplicationController
    
     before_action :authenticate_user!
  
  
  def index
    
    
                                        # can pass the cart data to view
    if session[:cart] then                # are this cart exists
                                       
      @cart = session[:cart] 
      
    else 
                                        # if the cart doesnt exist then create the cart to be an empty object 
     @cart = {}
      
                                         # redirect_to :root
      redirect_to root_path
    end  
    
    
     @orders = current_user.orders
    
  end




    def addtobasket
           
      id = params[:id]
      
             if session[:cart]  
              cart = session[:cart]  
            else
             session[:cart] = {} 
             cart = session[:cart ]
            end
      
                                           
    if cart[id]                     
        
        cart[id] = cart[id] + 1               
    else 
      
       cart[id] = 1                    
    end
       
      
      redirect_to :action => :index
    end 
    
    
    def clearthecart
 
           session[:cart] = nil
           
            redirect_to :action => :index
      
    end
    

    def deleteall
      
      id = params[:id]
      cart = session[:cart]
      cart.delete id
      
      redirect_to :root
    end
    
    
    def decreaseitems
      
       id = params[:id]
       cart = session[:cart]
       
       if cart[id] == 1 then
         
         cart.delete id
         
       else
       
       cart[id] = cart[id] -1
      
       end
       redirect_to :action => :index
      

   
end 
    
    
    
    def createOrder 
      
                                      
      
      @user = User.find(current_user.id)
      
     
      
     @order = @user.orders.build( :order_date => DateTime.now, :status => 'Pending')
      
      @order.save
    
    
   
    @cart = session[:cart] || {} 
    
    @cart.each do | id, quantity |
      
      item = Item.find_by_id(id)
    
    @orderitem = @order.orderitems.build(:item_id => item.id, :title => item.title, :description => item.description, :quantity => quantity, :price => item.price)
    @orderitem.save
  end 
  
 
 @orders = Order.all
 
 @orderitems = Orderitem.where(order_id: Order.last)
 
 
 
   #<% @orderitems.each do |id, quantity| %>
 
 
 
 
 
   
   #redirect_to '/done'

       #redirect_to :action => :done
    end   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    def done
     # @orders.limit(1).order(id: :desc).where(user: User.find(current_user.id))
      
     @orderitems = Orderitem.where(order_id: Order.limit(1).order(id: :desc).where(user: User.find(current_user.id)))
     
    # Permission.find_by(user_id: params[:user_id], project_id: params[:project_id])
    end
    
end





