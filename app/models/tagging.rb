# == Schema Information
#
# Table name: taggings
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  card_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tagging < ApplicationRecord
    belongs_to(:card, :class_name => "Card", :foreign_key => "card_id")
    belongs_to(:tag, :class_name => "Tag", :foreign_key => "tag_id")
    validates :card_id, :uniqueness => { :scope => :tag_id }
end
