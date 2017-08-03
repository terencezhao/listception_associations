# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Board < ApplicationRecord
    has_many(:lists, :class_name => "List", :foreign_key => "board_id")
end
