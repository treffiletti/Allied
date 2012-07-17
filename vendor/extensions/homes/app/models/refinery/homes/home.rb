module Refinery
  module Homes
    class Home < Refinery::Core::BaseModel
      belongs_to :site, :class_name => 'Refinery::Sites::Site'
      
      self.table_name = 'refinery_homes'

      attr_accessible :name, :description, :price, :square_feet, :photo, :position, :photo_id

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
