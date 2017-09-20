Rails.application.routes.draw do

  get "ficha_nums/_new_paciente" => 'ficha_nums#_new_paciente', :as => :_new_paciente

  get 'ficha_nums/_new_paciente'

  resources :diagnosticos
  resources :categoris
  resources :stocks

  resources :puesto_saluds do 
    collection do get "getInfo"
    end
  end    
  resources :ficha_nums do
    resources :pacientes

    collection do get "getInfoFich"
    end
  end
  resources :categoria
  resources :categorias
  devise_for :models
  devise_for :users
  root :to => 'ficha_nums#index'
  resources :pacientes
  resources :fichas
  # resources :layouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
