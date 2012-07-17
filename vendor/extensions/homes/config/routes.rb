Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :homes do
    resources :homes, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :homes, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :homes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
