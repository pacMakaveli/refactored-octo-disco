class Collection < ApplicationRecord
  has_many :listables
  has_many :lists, through: :listables
  belongs_to :user
end