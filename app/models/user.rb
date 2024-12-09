# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  email        :string
#  name         :string
#  password     :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class User < ApplicationRecord
  validates :phone_number, presence: true
  validates :name, presence: true
  validates :email, presence: true

  has_many(:apartments, class_name: "Apartment", foreign_key: "user_id", dependent: :destroy)
  has_many(:inquiries, class_name: "Inquiry", foreign_key: "asker_id", dependent: :destroy)
  has_many(:inquiries_received, class_name: "Inquiry", foreign_key: "answerer_id", dependent: :destroy)
  

end
