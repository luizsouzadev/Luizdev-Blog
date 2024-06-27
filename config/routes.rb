Rails.application.routes.draw do

  root to: 'site#index'


  get "admin", controller: :admin, action: :index, as: :admin_root
  devise_for :usuarios, path: 'admin', path_names: { sign_in: 'entrar', sign_out: 'sair' }, controllers: { sessions: 'admin/sessions' }

  namespace :admin do
    resources :postagens
  end

  get "single_postagem/:id" => "site#single_postagem", as: :single_postagem

  get "up" => "rails/health#show", as: :rails_health_check



  # Defines the root path route ("/")
  # root "posts#index"
end
