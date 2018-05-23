# == Schema Information
#
# Table name: restaurants
#
#  id           :integer          not null, primary key
#  name         :string
#  address      :string
#  phone_number :string
#  category     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: :true
  validates :address, presence: :true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
end
