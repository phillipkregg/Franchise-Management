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

require 'test_helper'

class FeatureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
