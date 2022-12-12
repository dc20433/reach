Rails.application.routes.draw do
  resources :regis do
    resources :charts
    resources :patients
  end
   
  get 'consent' => 'sites#consent'
  get 'insurance' => 'sites#insurance'
  
  root 'sites#home'
end
