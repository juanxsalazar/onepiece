Rails.application.routes.draw do
  resources :societies do
    resources :characters
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# locations nested  
# business - locations - jobs...... 