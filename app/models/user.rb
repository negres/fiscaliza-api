class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Allowlist
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: self

  has_many :demands
end
