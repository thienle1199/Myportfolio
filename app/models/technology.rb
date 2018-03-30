# == Schema Information
#
# Table name: technologies
#
#  id           :integer          not null, primary key
#  name         :string
#  portfolio_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_technologies_on_portfolio_id  (portfolio_id)
#
# Foreign Keys
#
#  fk_rails_...  (portfolio_id => portfolios.id)
#

class Technology < ApplicationRecord
  belongs_to :portfolio
end
