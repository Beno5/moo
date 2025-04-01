Rails.application.routes.draw do

  get 'whymoo', to: 'pages#whymoo', as: 'whymoo'
  get 'solutions', to: 'pages#solutions', as: 'solutions'
  get 'resources', to: 'pages#resources', as: 'resources'
  get 'pricing', to: 'pages#pricing', as: 'pricing'
  get 'think_green', to: 'pages#think_green', as: 'think_green'
  get 'about_us', to: 'pages#about_us', as: 'about_us'
  get 'contact', to: 'pages#contact', as: 'contact'

  post 'contact_form/send_email'

  # Root route for the home page
  root "pages#home"
end
