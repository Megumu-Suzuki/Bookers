Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'books#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'book/:id' => 'books#show',as:'book'
  get 'books/:id/edit' => 'books#edit',as:'edit_book'
  patch 'books/:id' => 'todolists#update',as:'update_book'
  delete 'books/:id' => 'books#destroy',as:'destroy_book'
end
