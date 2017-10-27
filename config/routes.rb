Rails.application.routes.draw do
 resources :ficha_medicas do
  resources :diagnosticos do
  resources :consultas
  end
end
  
  get "ficha_nums/_new_paciente" => 'ficha_nums#_new_paciente', :as => :_new_paciente

  get 'ficha_medicas/consultas' => 'ficha_medicas#consultas', :as => :consultas

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
  root :to => 'ficha_medicas#index'
  resources :pacientes
  resources :fichas
  # resources :layouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
