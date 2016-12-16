class Blog < ApplicationRecord

  has_many :joins, dependent: :destroy
  has_many :users, through: :joins
  has_many :convos

end
