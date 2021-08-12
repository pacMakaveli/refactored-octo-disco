class Listable < ApplicationRecord
  belongs_to :collection
  belongs_to :list, inverse_of: :listables
end