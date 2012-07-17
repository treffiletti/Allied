Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :sites do
    resources :sites, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :sites, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :sites, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
