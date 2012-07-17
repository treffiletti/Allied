module Refinery
  module Sites
    class SitesController < ::ApplicationController

      before_filter :find_all_sites
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @site in the line below:
        present(@page)
      end

      def show
        @site = Site.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @site in the line below:
        present(@page)
      end

    protected

      def find_all_sites
        @sites = Site.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/sites").first
      end

    end
  end
end
