# == Schema Information
#
# Table name: franchises
#
#  id               :integer         not null, primary key
#  franchise_name   :string(255)
#  franchise_number :string(255)
#  franchise_set_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Franchise < ActiveRecord::Base
  belongs_to :franchise_set
  
  validates :franchise_name, :presence => true
  validates :franchise_number, :presence => true
  
  
end
