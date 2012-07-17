class AddSiteIdToHomes < ActiveRecord::Migration
  def change
    add_column :refinery_homes, :site_id, :integer
  end
end