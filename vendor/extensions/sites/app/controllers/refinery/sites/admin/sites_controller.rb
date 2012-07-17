module Refinery
  module Sites
    module Admin
      class SitesController < ::Refinery::AdminController

        crudify :'refinery/sites/site',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
