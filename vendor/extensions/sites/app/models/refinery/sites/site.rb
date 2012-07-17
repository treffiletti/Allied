module Refinery
  module Sites
    class Site < Refinery::Core::BaseModel
      has_many :homes, :class_name => 'Refinery::Homes::Home'
      
      self.table_name = 'refinery_sites'

      attr_accessible :name, :description, :photo, :location, :position, :photo_id

      acts_as_indexed :fields => [:name, :description, :location]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
