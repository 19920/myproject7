Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/location'
  get 'welcome/gallery'
  get 'riders/index'
  delete '/riders/:rider.id', to: 'riders#destroy'
  resources :contests
  resources :riders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
