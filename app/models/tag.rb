# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
    has_many(:taggings, :class_name => "Tagging", :foreign_key => "tag_id")
    has_many :cards, through: :taggings
    validates :name, :uniqueness => :true
end
