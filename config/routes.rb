Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'url#index'
  post '/url_create' => 'url#create'
  get '/:short' => 'url#show', as:"short" 
end
