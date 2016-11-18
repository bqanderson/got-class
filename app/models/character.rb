class Character < ApplicationRecord
  validates :str, :dex, :con, :int, :wis, :cha, presence: true
end
