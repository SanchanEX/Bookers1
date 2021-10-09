Rails.application.routes.draw do
  resources :books
  root :to => "books#top"
  post "books" => "books#create"
  get "books" => "books#index"
  get "books/:id" => "books#show", as: "book_show"
  get "books/:id/edit" => "books#edit", as: "book_edit"
  patch "books/:id" => "books#update", as: "book_update"
  delete "books/:id" => "books#destroy", as: "book_destroy"
end
