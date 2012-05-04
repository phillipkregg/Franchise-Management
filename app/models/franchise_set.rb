# == Schema Information
#
# Table name: franchise_sets
#
#  id          :integer         not null, primary key
#  set_name    :string(255)
#  set_id      :string(255)
#  soa_id      :string(255)
#  address     :string(255)
#  time_zone   :string(255)
#  country     :string(255)
#  temperature :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class FranchiseSet < ActiveRecord::Base  
  
  has_many :franchises
  has_many :users
  has_many :features
  has_many :tacos
  
  accepts_nested_attributes_for :franchises, :allow_destroy => true
  accepts_nested_attributes_for :users, :allow_destroy => true
  accepts_nested_attributes_for :features, :allow_destroy => true
  accepts_nested_attributes_for :tacos
  
  validates :set_name, :presence => true
  validates :set_id, :presence => true
  validates :soa_id, :presence => true
  validates :address, :presence => true
  
end
