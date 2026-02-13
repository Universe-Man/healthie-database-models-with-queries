class Plan < ApplicationRecord
  belongs_to :provider
  belongs_to :client
  has_many :journal_entries
end
