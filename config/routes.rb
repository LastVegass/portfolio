Rails.application.routes.draw do
  resources :resumes, except: [:show]
  get 'resume/:id', to: 'resumes#show', as: 'resume_show'

  get 'about' , to: 'pages#about'
  get 'contact' , to: 'pages#contact'


  resources :blogs
  root to: 'pages#home'
end
