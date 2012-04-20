# == Schema Information
#
# Table name: features
#
#  id               :integer         not null, primary key
#  feature_name     :string(255)
#  franchise_set_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Feature < ActiveRecord::Base
  belongs_to :franchise_set
end
