Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks' => 'tasks#index'
  get 'new' => 'tasks#new'	
  get 'show' => 'tasks#show'
  get 'edit' => 'tasks#edit'

end
