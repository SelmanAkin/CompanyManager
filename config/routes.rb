Rails.application.routes.draw do
  get 'reports', to: 'reports#index'
  devise_for :users
  root to: "home#index"
  resources :users, only: [:index, :destroy, :show]

  resources :customers
  resources :incomes
  resources :expenses
  resources :employees
  resources :leaves do
    member do
      patch :approve
      patch :reject
    end
  end
  resources :employees do
  member do
    post :send_salary_email
  end
  end

end
