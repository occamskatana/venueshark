# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  name       :string
#  rating     :float
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Venue < ApplicationRecord
end
