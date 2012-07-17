# This migration comes from refinery_sites (originally 1)
class CreateSitesSites < ActiveRecord::Migration

  def up
    create_table :refinery_sites do |t|
      t.string :name
      t.text :description
      t.integer :photo_id
      t.string :location
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-sites"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/sites/sites"})
    end

    drop_table :refinery_sites

  end

end
