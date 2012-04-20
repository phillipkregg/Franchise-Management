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

require 'test_helper'

class FranchiseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
