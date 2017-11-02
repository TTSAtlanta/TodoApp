Rails.application.routes.draw do
  resources :people
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'task' => 'tasks#index'
  get 'new' => 'tasks#new'	
  get 'show' => 'tasks#show'
  get 'edit' => 'tasks#edit'
  get 'create' => 'tasks#create'

end
