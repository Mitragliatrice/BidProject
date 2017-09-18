# == Route Map
#
#       Prefix Verb URI Pattern             Controller#Action
#     director GET  /director(.:format)     static_pages#landing
#         home GET  /home(.:format)         static_pages#home
# how_it_works GET  /how_it_works(.:format) static_pages#how_it_works
#     about_us GET  /about_us(.:format)     static_pages#about_us
#   contact_us GET  /contact_us(.:format)   static_pages#contact_us
#         root GET  /                       static_pages#landing
# 

Rails.application.routes.draw do
  devise_for :users
  get 'director', to: 'static_pages#landing'

  get 'home', to: 'static_pages#home'

  get 'how_it_works', to: 'static_pages#how_it_works'

  get 'about_us', to: 'static_pages#about_us'

  get 'contact_us', to: 'static_pages#contact_us'

  root to: 'static_pages#landing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
