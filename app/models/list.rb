class List < ApplicationRecord
  enum owner: [:user, :system]
  
  belongs_to :user
  has_many :listables, inverse_of: :list
  has_many :collections, through: :listables, counter_cache: true
end