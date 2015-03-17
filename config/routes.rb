Rails.application.routes.draw do
  resources :users

  namespace 'api' do
    scope path: 'v1', module: 'v1', constraints: ApiConstraint.new(version: 1) do
      resources :videos
    end

    scope path: 'v2', module: 'v2', constraints: ApiConstraint.new(version: 2) do
      resources :videos
    end
  end

end
