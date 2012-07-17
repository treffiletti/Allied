module Refinery
  module Homes
    module Admin
      class HomesController < ::Refinery::AdminController

        crudify :'refinery/homes/home',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
