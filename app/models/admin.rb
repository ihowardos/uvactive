class Admin < ApplicationRecord
  devise :database_authenticatable, :recoverable,
         :trackable, :validatable, :confirmable, :rememberable
end
