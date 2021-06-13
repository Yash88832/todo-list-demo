Rails.application.routes.draw do
  root "todo_lists#index"
  resources :todo_lists
  resources :todo_items do
    match :complete, on: :collection, via: [:patch]
  end
end
