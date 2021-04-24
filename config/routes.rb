Rails.application.routes.draw do
  
   default_url_options :host => "example.com"
  
  
  resources :categories
  resources :orders do
   resources:orderitems
    end  
  
  
  devise_for :users do
      
      resources:orders
     end 

  get '/paid/:id' => 'static_pages#paid'
  
  get '/manager' => 'static_pages#adminsection'
  
  get '/checkout' => 'cart#createOrder'
  
  get '/done' => 'cart#done'
  
  get 'cart/index'

  resources :items
  #################################################
                                     root 'static_pages#home'

   get '/helppage' => 'static_pages#help'

  get '/aboutpage' => 'static_pages#about'

   get '/contact' => 'static_pages#contact'
   
   get '/menus' => 'items#index'


   get'/search' => 'items#search'
   post '/search' => 'items#search'
   
   get '/feedback' => 'static_pages#feedback'
 # get '/feedback' => 'static_pages#feedback'
get '/upgrade/:id' => 'static_pages#upgradeadmin'
get '/downgrade/:id' => 'static_pages#downgradeadmin'


get '/profile' => 'static_pages#profileuser'

get '/alluser' => 'static_pages#alluser'


  
  get '/log_in' => 'user#log_in'
  
  get '/log_out' => 'user#log_out'
 ################################ 
  get '/cart' => 'cart#index'
  
  get '/cart/:id' => 'cart#addtobasket'
  
  get '/clearcart' => 'cart#clearthecart'
  
  get '/remove/:id' => 'cart#deleteall'
  
  get '/decrease/:id' => 'cart#decreaseitems'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
