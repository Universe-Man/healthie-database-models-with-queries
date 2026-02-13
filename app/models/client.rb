class Client < ApplicationRecord
  has_many :plans
  has_many :providers, through: :plans
  has_many :journal_entries
end
