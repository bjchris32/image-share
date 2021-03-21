Rails.application.routes.draw do
  resources :users
  resources :images

  get '/uploads/grid/image/media/:id/:filename' => 'gridfs#serve', :constraints  => { :filename => /[0-z\.]+/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
