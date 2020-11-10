Rails.application.routes.draw do

  resources :task_lists do
    resources :task_items
  end

root "task_lists#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
