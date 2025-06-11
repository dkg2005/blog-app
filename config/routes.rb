Rails.application.routes.draw do
  resources :blog_posts   # resources generating restful routes for the blog-posts and authors
  resources :authors

  # resources :posts, controller: 'blog_posts'


  # get "up" => "rails/health#show", as: :rails_health_check
  # root "posts#index"
end
