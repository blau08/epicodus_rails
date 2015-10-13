Rails.application.routes.draw do
  resources :chapters do
    resources :lessons
  end
end
