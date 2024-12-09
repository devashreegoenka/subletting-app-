# == Schema Information
#
# Table name: inquiries
#
#  id           :bigint           not null, primary key
#  messaage     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  answerer_id  :integer
#  apartment_id :integer
#  asker_id     :integer
#
class Inquiry < ApplicationRecord
end
