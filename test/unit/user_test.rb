# == Schema Information
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  user_name            :string(255)
#  franchise_set_number :string(255)
#  user_domain          :string(255)
#  franchise_set_id     :integer
#  created_at           :datetime
#  updated_at           :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
