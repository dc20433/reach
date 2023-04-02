Rails.application.routes.draw do
  
  resources :regis do
    resources :charts
    resources :patients
    resources :filings
  end
  
  devise_for :users
  
  resources :users
  
  get 'overviews/chart_date'
  get 'overviews/chart_name'
  get 'overviews/patient_info'
  get 'overviews/patient_list'
  # get 'restore_points/patient_list_update'
  # get 'restore_points/patient_charts_update'
  # get 'restore_points/patient_info_update'
  get 'consent' => 'sites#consent'
  get 'insurance' => 'sites#insurance'
  
  root 'sites#home'
end
