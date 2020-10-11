class Product < ApplicationRecord

  #scopes
  scope :active, -> {where(active: true).order(title: :asc)}
end