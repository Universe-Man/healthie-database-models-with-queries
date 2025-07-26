class Doctor < ApplicationRecord
  has_many :plans
  has_many :patients, through: :plans
end
