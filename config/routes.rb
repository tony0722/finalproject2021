Rails.application.routes.draw do
  resources :orders do
      
      resources:orderitems
      
    end  
  
  
  
  
  
  devise_for :users do
      
      resources:orders
     end 
  
  get '/paid/:id' => 'static_pages#paid'
  
  get '/admin' => 'static_pages#adminsection'
  
  get '/checkout' => 'cart#createOrder'
  
  get '/done' => 'cart#done'
  
  get 'cart/index'

  resources :items
 root 'static_pages#home'

   get '/help' => 'static_pages#help'

  get '/about' => 'static_pages#about'

   get '/contact' => 'static_pages#contact'
   
   get '/products' => 'items#index'


  get '/pretend_login' => 'user#pretendlogin'
  
  get '/pretend_logout' => 'user#pretendlogout'
  
  get '/cart' => 'cart#index'
  
  get '/cart/:id' => 'cart#add'
  
  get '/clearcart' => 'cart#clearcart'
  
  get '/remove/:id' => 'cart#remove'
  
  get '/decrease/:id' => 'cart#decrease'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
