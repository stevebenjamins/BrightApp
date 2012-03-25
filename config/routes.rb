BrightApp::Application.routes.draw do
  
  
  match "register" => "websites#new", :as => :register
  match "sign-in" => "sessions#new"

  resources :sessions,:websites

  namespace :admin do 
    get "dashboard" => "pages#show", :permalink => 'home'
    get "dashboard/account-details" => "users#edit", :as => :account_details
    get "dashboard/settings" => "websites#edit"
    get "dashboard/:permalink" => "pages#show"
    resources :users,:websites

    resources :pages do 
      namespace :element do 
        resources :paragraphs
      end
    end

    resources :page_elements do
      collection { post :sort  }
    end 

  end

  
  root :to => "sessions#new"

  get ":websitedomain" => "pages#show", :permalink => 'home', :as => :public_home
  get ":websitedomain/:permalink" => "pages#show", :as => :public_page
  
end
