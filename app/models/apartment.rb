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
#  manual_availability     :boolean
#  rent                    :string
#  state                   :string
#  status                  :string
#  title                   :string
#  zip_code                :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  user_id                 :integer
#
class Apartment < ApplicationRecord

  validates :city, presence: true
  validates :availability_start_date, presence: true
  validates :availability_start_date, presence: true
  validates :address, presence: true

belongs_to(:user, required: true, class_name: "User", foreign_key: "user_id")
has_many(:inquiries_tables, class_name: "Inquiry", foreign_key: "apartment_id", dependent: :destroy)
has_many(:apartment_images, class_name: "ApartmentImage", foreign_key: "apartment_id", dependent: :destroy)
end
