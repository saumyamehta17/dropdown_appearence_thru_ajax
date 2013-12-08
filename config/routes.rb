DropdownAppearenceThruAjax::Application.routes.draw do

  resources :users do
    collection do
      get 'populate_post'
      get 'create_post'
    end
  end

  root 'users#index'

end
