module Refinery
  module Sites
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Sites

      engine_name :refinery_sites

      initializer "register refinerycms_sites plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "sites"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.sites_admin_sites_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/sites/site',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Sites)
      end
    end
  end
end
