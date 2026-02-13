class JournalEntry < ApplicationRecord
  belongs_to :client
  belongs_to :plan
end
