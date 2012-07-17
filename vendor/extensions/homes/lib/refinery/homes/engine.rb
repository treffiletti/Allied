module Refinery
  module Homes
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Homes

      engine_name :refinery_homes

      initializer "register refinerycms_homes plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "homes"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.homes_admin_homes_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/homes/home',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Homes)
      end
    end
  end
end
