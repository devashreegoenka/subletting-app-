# == Schema Information
#
# Table name: apartment_images
#
#  id           :bigint           not null, primary key
#  image_url    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  apartment_id :integer
#
class ApartmentImage < ApplicationRecord
end
