# == Schema Information
#
# Table name: orders
#
#  id                  :bigint           not null, primary key
#  amount_cents_cents  :integer          default(0), not null
#  state               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  checkout_session_id :string
#  user_id             :bigint
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
