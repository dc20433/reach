Rails.application.routes.draw do
  
  resources :regis do
    resources :charts
    resources :patients
    resources :filings
  end
  
  devise_for :users
  resources :users
  
  get 'prints/pregi'
  get 'prints/pchart_patient'
  get 'prints/pchart_date'
  get 'prints/ppatient'
  get 'print' => 'regis#print'
  get 'consent' => 'sites#consent'
  get 'insurance' => 'sites#insurance'
  
  root 'sites#home'
end
