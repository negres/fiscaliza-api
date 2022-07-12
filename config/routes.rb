Rails.application.routes.draw do
  defaults format: :json do
    devise_for :users,
               controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
               }

    resources :users, only: :show
  end
end
