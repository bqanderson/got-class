class Character < ApplicationRecord
  has_many :tales, dependent: :destroy
  validates :str, :dex, :con, :int, :wis, :cha, presence: true
end
