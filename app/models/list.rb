# == Schema Information
#
# Table name: lists
#
#  id             :integer          not null, primary key
#  title          :string
#  board_id       :integer
#  position_order :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class List < ApplicationRecord
    belongs_to(:board, :class_name => Board, :foreign_key => "board_id")
    has_many(:cards, :class_name => "Card", :foreign_key => "list_id")
end
