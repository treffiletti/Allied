module Refinery
  module Homes
    class HomesController < ::ApplicationController

      before_filter :find_all_homes
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @home in the line below:
        present(@page)
      end

      def show
        @home = Home.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @home in the line below:
        present(@page)
      end

    protected

      def find_all_homes
        @homes = Home.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/homes").first
      end

    end
  end
end
