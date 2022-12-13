Rails.application.routes.draw do
  resources :regis do
    resources :charts
    resources :patients
  end
  
  devise_for :users

  resources :users

  get 'consent' => 'sites#consent'
  get 'insurance' => 'sites#insurance'
  
  
  root 'sites#home'
end
