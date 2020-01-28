Rails.application.routes.draw do
  devise_for :users
  get '/users/sign_out' => 'devise/sessions#destroy'

  resources :resumes, except: [:show]
  get 'angular-items', to: 'resumes#angular'
  get 'resume/:id', to: 'resumes#show', as: 'resume_show'

  get 'about' , to: 'pages#about'
  get 'contact' , to: 'pages#contact'


  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root to: 'pages#home'
end
