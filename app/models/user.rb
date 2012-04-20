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

class User < ActiveRecord::Base
  belongs_to :franchise_set
end
