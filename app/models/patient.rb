# == Schema Information
#
# Table name: patients
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  phone_number   :string
#  email          :string
#  street_address :string
#  city           :string
#  state          :string
#  zip            :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Patient < ActiveRecord::Base
end
