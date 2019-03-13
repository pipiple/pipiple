Rails.application.routes.draw do
  devise_for :owners, controllers: {
  sessions:      'owners/sessions',
  passwords:     'owners/passwords',
  registrations: 'owners/registrations'
}
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  get 'submits/indexsecret' => 'submits#index'
  resources :submits

  get 'newplan' => 'submits#new'
  post 'newplan' => 'submits#create'

  get 'submits/search_show/' => 'submits#search_show'
  post 'submits/search_show/' => 'submits#search_show'
  get 'submits/area/:search' => 'submits#area_search'
  get 'submits/purpose/:search' => 'submits#purpose_search'
  get 'submits/mood/:search' => 'submits#mood_search'

  get 'tops/index' => 'tops#index'
  root 'tops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
