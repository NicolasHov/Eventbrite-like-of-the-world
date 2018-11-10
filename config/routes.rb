Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/index'
  
  root to: "pages#home"
  resources:events
  resources:categories
end
