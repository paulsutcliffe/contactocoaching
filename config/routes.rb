Contactocoaching::Application.routes.draw do

  scope '(:locale)', :locale => /#{I18n.available_locales.join("|")}/ do

    resources :videos
    resources :clients do
      resources :photos
    end
    resources :addresses
    resources :whoweares
    resources :howdowedos
    resources :teams
    resources :whatdowedos

    match 'quienes_somos' => 'whoweares#index'
    match "equipo" => "teams#index"
    match 'clientes' => 'clients#index'
    match 'videos' => 'videos#index'
    match 'como_lo_hacemos' => 'howdowedos#index'
    match 'que_hacemos' => 'whatdowedos#index'
    match 'contacto' => 'addresses#index'

    match "/admin" =>'access#index'
    match "/cms" =>'access#index'
    match "/login" =>'access#login'
    match "/attempt_login" =>'access#attempt_login'
    match "/logout" =>'access#logout'

    root :to => "home#index"

  end

end
