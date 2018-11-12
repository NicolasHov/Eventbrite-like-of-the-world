Rails.application.routes.draw do
  get 'pages/index'
  
  root to: "pages#home"
  resources:events
  resources:categories
end
