# == Schema Information
#
# Table name: apartments
#
#  id                      :bigint           not null, primary key
#  address                 :string
#  availability_end_date   :string
#  availability_start_date :string
#  city                    :string
#  description             :string
#  rent                    :string
#  state                   :string
#  title                   :string
#  zip_code                :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  user_id                 :integer
#
class Apartment < ApplicationRecord
end
