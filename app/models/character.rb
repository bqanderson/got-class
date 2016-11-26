class Character < ApplicationRecord
  has_many :tales
  validates :str, :dex, :con, :int, :wis, :cha, presence: true
end
