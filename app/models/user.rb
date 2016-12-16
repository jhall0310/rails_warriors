class User < ApplicationRecord
  has_many :joins, dependent: :destroy
  has_many :blogs, through: :joins
  has_many :convos


  has_secure_password

end
