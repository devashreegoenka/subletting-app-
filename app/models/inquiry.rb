# == Schema Information
#
# Table name: inquiries
#
#  id           :bigint           not null, primary key
#  message      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  answerer_id  :integer
#  apartment_id :integer
#  asker_id     :integer
#
class Inquiry < ApplicationRecord

  belongs_to( :asker, required: true, class_name: "User", foreign_key: "asker_id")
  belongs_to( :answerer, required: true, class_name: "User", foreign_key: "answerer_id")
  belongs_to( :apartment, required: true, class_name: "Apartment", foreign_key: "apartment_id")

end
