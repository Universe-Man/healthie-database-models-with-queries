class Patient < ApplicationRecord
  has_many :plans
  has_many :doctors, through: :plans
  has_many :journal_entries
end
