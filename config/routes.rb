Rails.application.routes.draw do
 
  root 'posts#index'
  resources :posts
  resources :tags, shallow: true

end


# Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         posts#index
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
#      tags GET    /tags(.:format)           tags#index
#           POST   /tags(.:format)           tags#create
#   new_tag GET    /tags/new(.:format)       tags#new
#  edit_tag GET    /tags/:id/edit(.:format)  tags#edit
#       tag GET    /tags/:id(.:format)       tags#show
#           PATCH  /tags/:id(.:format)       tags#update
#           PUT    /tags/:id(.:format)       tags#update
#           DELETE /tags/:id(.:format)       tags#destroy